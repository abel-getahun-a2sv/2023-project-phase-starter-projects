import Image  from 'next/image'
import background from '@/assets/images/build-better-tommorow.jpg'
import MessageSvg from '@/assets/images/messages.svg'
export default function BuildBetterSection() {
    return (
        <section className='text-center flex flex-col items-center space-y-4 md:space-y-8 md:text-lg'>
        <h2 
        className='font-semibold font-primaryFont text-3xl md:text-4xl'>
            Lets build a better
            <br /> tomorrow
        </h2>
        <p 
            className='font-primaryFont text-left md:text-center w-11/12 text-[#7D7D7D] md:w-10/12'
            >
            A2SV upskills high-potential university students, 
            connects them with opportunities at top tech companies 
            around the world, and creates digital solutions to urgent
            problems in their home countries. The program is free for students, 
            making the opportunity available for youth who have talent but lack 
            the means to use it.
        </p>
        <button 
            className=' text-white font-primaryFont rounded-md bg-primaryColor py-1 px-2 md:px-4 md:py-2'
            >
            <Image 
                className='inline-block my-1 mx-2 md:m-2' 
                src={MessageSvg} alt='message' 
                width={21.25} 
                height={21.25}/>
                Connect with our team
        </button>

        <Image 
            className='w-10/12 object-top object-cover h-10/12' 
            src={background}
            alt='hero'/>
        </section>
    )
}