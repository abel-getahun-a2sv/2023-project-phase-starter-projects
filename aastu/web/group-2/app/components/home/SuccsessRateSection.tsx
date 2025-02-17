import BuildBetterImage from '@/assets/images/build-better-tommorow.jpg'
import SuccsessRateCard from './SuccsessRateCard'
import type { SuccsessRateCardProps } from './SuccsessRateCard'

export default function SuccsessRateSection(){
    const data: SuccsessRateCardProps[] = [
        {
            title: 'Internship',
            reversed: true,
            image: BuildBetterImage,
            content:"Students who passed their interviews get 3-month internships to gain experience in building scalable products that are widely used around the world."
        },
        {
            title: '360° Training',
            reversed: false,
            image: BuildBetterImage,
            content:"A2SV upskills students with a 360° software engineering program that focuses on problem-solving, effective speaking, and personal development."
        },
        {
            title: 'Internship',
            reversed: true,
            image: BuildBetterImage,
            content:"Students who passed their interviews get 3-month internships to gain experience in building scalable products that are widely used around the world."
        }
    ]
    return (
        <section
        className='font-primaryFont my-10 text-center flex w-full flex-col items-center space-y-4 md:space-y-8 lg:text-base'>
            <h2
            className='font-semibold font-primaryFont text-3xl md:text-4xl'>
            Google SWE Interviews Acceptance
            <br/>Rate Comparison
            </h2>
            <div
            className="grid grid-cols-4 lg:grid-cols-5 gap-6 w-11/12 bg-slate-50 p-8 rounded-xl">
                <p
                    className=" text-center col-span-full lg:text-left lg:col-span-1">
                    A2SV students are 
                    <span className='font-semibold'> 35 </span> 
                    times more 
                    likely to pass 
                    <span className='font-semibold'> Google SWE interviews </span> 
                     than average candidates. than average candidates.
                </p>

                <div
                className='bg-white shadow-md flex flex-wrap items-center shadow-gray-200 col-span-2 md:col-span-1 rounded-lg p-4'>
                    <p
                    className="w-full font-semibold">2019</p>
                    <p
                    className="w-full self-end font-semibold">
                        Founded</p>
                    <p
                    className="w-full text-[#7d7d7d]">5% avarage</p>
                </div>

                <div
                className='bg-white shadow-md flex flex-wrap items-center col-span-2 md:col-span-1 shadow-gray-200 rounded-lg p-4'>
                    <p
                    className="w-full font-semibold">2020</p>
                    <p
                    className="w-full self-end font-semibold">
                        27%</p>
                    <p
                   className="w-full text-[#7d7d7d]">5.2% avarage</p>
                </div>

                <div
                className='bg-white shadow-md flex flex-wrap items-center col-span-2 md:col-span-1 shadow-gray-200 rounded-lg p-4'>
                    <p
                    className="w-full font-semibold">2021</p>
                    <p
                    className="w-full self-end font-semibold">
                        59%</p>
                    <p
                    className="w-full text-[#7d7d7d]">3.9% avarage</p>
                </div>

                <div
                className='bg-white shadow-md flex flex-wrap items-center col-span-2 md:col-span-1 shadow-gray-200 rounded-lg p-4'>
                    <p
                    className="w-full font-semibold">2022</p>
                    <p
                    className="w-full self-end font-semibold">
                        70%</p>
                    <p
                    className="w-full text-textColor-100">2.6% avarage</p>
                </div>
            </div>

            <div
                className='w-10/12'>
                {data.map((item,i) =>{
                    return(
                        <SuccsessRateCard key={i} {...item}/>
                    )
                })}
                

            </div>
        </section>
    )
}