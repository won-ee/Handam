import React, { useEffect, useState } from 'react';
import DatePicker from 'react-datepicker';
import 'react-datepicker/dist/react-datepicker.css';
import { ModalCompanionWrite } from './ModalCompanionWrite';
import { PlanListApi } from '../../../services/api/PlanService';
import { PlanListResponseType, PlanListType } from '../../../model/MyPageType';



const ModalCompanionChoiceImg: React.FC<{ onClose: () => void }> = ({onClose}) => {
  const [isWriteModalOpen, setIsWriteModalOpen] = useState(false);
  const [selectedDate, setSelectedDate] = useState<Date | null>(null);
  const [planList, setPlanList] = useState<PlanListType[]>([])

  useEffect(()=>{

    PlanListApi()
    .then((res) => {
      const data: PlanListResponseType = res.data
      console.log(data);
      
      if (data.success) {
        setPlanList(data.response)
      } else {
        console.log('fail')
      }
    })
    .catch((error) => {
          console.error(error);
        })
  },[])

  return (
    <>
    <div className="fixed inset-0 z-30 flex items-center justify-center bg-black bg-opacity-50" onClick={() => onClose()} ></div>
      <div className="fixed z-50 top-8 right-[360px] bg-[#F4F4EE] rounded-lg shadow-lg w-[800px] h-[650px] p-6" >
        {/* 모달 닫기 버튼 */}
        <button 
          className="absolute top-2 right-2 text-gray-500 hover:text-gray-700"
          onClick={() => onClose()} 
          >
          &times;
        </button>
        
        {/* 상단 텍스트 */}
        <div className="text-center text-lg font-semibold mb-2">
          동행할 일정을 골라주세요
        </div>
        
        {/* 구분선 */}
        <hr className="border-t border-gray-300 mb-4" />
       {/* 캘린더 선택 */}
       <div className="flex justify-end mb-4">
          <DatePicker 
            selected={selectedDate}
            onChange={(date: Date | null) => setSelectedDate(date)}
            dateFormat="yyyy-MM-dd"
            placeholderText="날짜를 선택하세요"
            className="border border-gray-300 rounded px-3 py-2 w-40" 
            />
        </div>
        {/* 카드 리스트 */}
        <div className="grid grid-cols-3 gap-4">
          {planList.map((plan, index) => (
            <div 
            key={index} 
            className="relative overflow-hidden rounded-lg shadow-md hover:shadow-lg transition-shadow cursor-pointer"
            onClick={() => setIsWriteModalOpen(true)} 
            >
              <img 
                src={plan.thumbNailImageUrl} 
                alt={`Image ${index + 1}`} 
                className="w-full h-40 object-cover rounded-lg" 
                />
              <div className="absolute bottom-0 left-0 right-0 bg-black bg-opacity-50 text-white p-2 text-sm text-center">
                {plan.title}
              </div>
            </div>
          ))}
        </div>
      </div>

      {/* Write 모달 컴포넌트 */}
      {isWriteModalOpen && <ModalCompanionWrite onClose={() => setIsWriteModalOpen(false)} />}
  </>
  );
}

export default ModalCompanionChoiceImg;