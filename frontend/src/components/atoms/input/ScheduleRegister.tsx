import React, { useState, useEffect } from 'react';
import MapMarker from '../../../assets/statics/MapMarker.png';
import test1 from '../../../assets/statics/Duli.png';

interface Props {
  currentDate: number;
  index: number;
}

const ScheduleRegister: React.FC<Props> = ({ currentDate, index }) => {
  const [scheduleTitle, setScheduleTitle] = useState(''); // 입력 값 상태로 관리

  const [_, setDragging] = useState(false);
  const [droppedText, setDroppedText] = useState<any>(null);

  const handleDrop = (e: React.DragEvent<HTMLDivElement>) => {
    e.preventDefault();
    const data = JSON.parse(e.dataTransfer.getData('place'));
    setDroppedText(data);
    setDragging(false);
  };

  const handleDragOver = (e: React.DragEvent<HTMLDivElement>) => {
    e.preventDefault(); // 드롭을 허용하려면 기본 동작을 방지해야 합니다.
  };


  // 입력 값을 localStorage에 저장하기 위한 함수
  const saveToLocalStorage = (date: number, value: string) => {
    localStorage.setItem(`scheduleTitle_${date}`, value);
  };

  // currentDate가 변경될 때 해당 날짜의 저장된 값을 불러오는 useEffect
  useEffect(() => {
    const storedTitle = localStorage.getItem(`scheduleTitle_${currentDate}`);
    
    if (storedTitle && storedTitle !== '') {
        const userResponse = confirm('저장된 데이터를 불러오시겠습니까?')
        if (userResponse){
            setScheduleTitle(storedTitle); // 저장된 값이 있으면 로드
        }
        else{
            setScheduleTitle('')
            saveToLocalStorage(currentDate, '')
        }
    } else {
      setScheduleTitle(''); // 저장된 값이 없으면 빈 문자열로 초기화
      saveToLocalStorage(currentDate, '')
    }
  }, [currentDate]);

  // 입력값 변경 핸들러
  const handleInputChange = (e: React.ChangeEvent<HTMLInputElement>) => {
    const newTitle = e.target.value;
    setScheduleTitle(newTitle); // 상태 업데이트
    saveToLocalStorage(currentDate, newTitle); // localStorage에 값 저장
  };

  return (
    <div key={index}>
      <h3>Schedule for {currentDate}</h3>
      <input
        type="text"
        name="scheduleTitle"
        value={scheduleTitle} // 상태에서 입력 값 유지
        onChange={handleInputChange} // 입력 값 변경 처리
        placeholder="Enter schedule title"
      />
      <div id='container' className="w-[390px] h-[150px] flex min-h-[150px] justify-around items-center">
        <div className="flex flex-col justify-start text-[13px] gap-4" onDrop={handleDrop}
        onDragOver={handleDragOver}>
          <span>{droppedText ? droppedText.category_group_name : '여기에 드롭'} | {droppedText ? droppedText.place_name : '여기에 드롭'}</span>
          <textarea placeholder="내용추가" className="h-[60px] whitespace-pre-wrap w-[200px] overflow-hidden resize-none" />
          <div className="flex justify-start items-center gap-1 text-[#645E59]">
            <img src={MapMarker} className="scale-75" />
            {droppedText.road_address_name ? (
                        <>
                            <span className='text-[15px] text-gray-400'>{droppedText.road_address_name}</span>
                        </>
                    ) : (
                        <span className='text-[15px] text-gray-400'>{droppedText.address_name}</span>
                    )}
          </div>
        </div>
        <img src={test1} className="w-[110px] h-[110px] rounded-[13px]" />
      </div>
    </div>
  );
};

export default ScheduleRegister;