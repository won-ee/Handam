import {useState, useEffect} from 'react';
import PersonalSearch from '../../atoms/input/PersonalSearch';
import { useSearchAndSort } from '../../../hooks/useSearchAndSort';
import { FeedCard } from './FeedCard';
import ArticleList from '../../../dummydata/companion/accompnyBoardsUserArticleList.json'; // 더미 데이터 다시 추가
import { articleList } from '../../../services/api/AccompanyBoardAPI';
import { UserArticle, UserArticleApiResponse } from '../../../model/AccompanyBoardType';
import { useRecoilValue } from 'recoil';
import { UserId } from '../../../Recoil/atoms/Auth';
import { useInView } from 'react-intersection-observer';

export const PersonalCompanionDetail: React.FC = () => {
  const [userArticleList, setUserArticleList] = useState<UserArticle[]>([]);
  const userId = useRecoilValue(UserId);
  const [page, setPage] = useState(0);
  const [hasNextPage, setHasNextPage] = useState(true); // 다음 페이지 존재 여부
  const [ref, inView] = useInView();

  // 더미 데이터 렌더링
  useEffect(() => {
    const typedArticleList = ArticleList as UserArticleApiResponse; // 더미 데이터 타입 캐스팅
    if (typedArticleList.success) {
      setUserArticleList(typedArticleList.response.articles);
      setHasNextPage(typedArticleList.response.hasNextPage);
    }
  }, []); 

  // 페이지가 변경될 때마다 데이터를 추가로 로드
  useEffect(() => {
    if (hasNextPage) {
      articleList(userId, page)
        .then((res) => {
          setUserArticleList(prev => [...prev, ...res.data.response.articles]); // 데이터 추가
          setHasNextPage(res.data.response.hasNextPage); // 다음 페이지 여부 갱신
        });
    }
  }, [page]); 

  // inView가 true일 때 페이지 증가
  useEffect(() => {
    if (inView && hasNextPage) {
      setPage(prevPage => prevPage + 1); // 페이지 증가
    }
  }, [inView, hasNextPage]);

  const { filteredArr, onSearch, onSortChange, showAllItems } = useSearchAndSort<UserArticle>(
    userArticleList,
    ['title', 'description'], // 검색에 사용할 필드 배열
    'createdDate' // 정렬에 사용할 필드
  );

  return (
    <>
      <div className="mb-5">
        <PersonalSearch onSearch={onSearch} showAllItems={showAllItems} onSortChange={onSortChange} />
      </div>

      <div className="grid grid-cols-1 md:grid-cols-3 gap-4">
        {filteredArr.length > 0 ? (
          filteredArr.map((plan, index) => (
            <div key={index}>
              <FeedCard
                key={index}
                title={plan.title}
                address={plan.address}
                content={plan.description}
                createdDate={plan.createdDate}
                comment={plan.commentCount}
                image={plan.imageUrl}
              />
            </div>
          ))
        ) : (
          <p className="text-center col-span-3">일정이 없습니다.</p>
        )}
        <div ref={ref} /> 
      </div>
    </>
  );
};