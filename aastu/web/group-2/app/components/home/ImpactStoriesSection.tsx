import React from 'react';
import Image from 'next/image';
import person1 from '@/assets/images/bees.png';

const ImpactStoriesSection = () => {
  return (
    <section className='flex flex-col justify-center items-center gap-y-12 my-10 md:mt-24'>
      <h2 className='text-textColor-300 font-secondaryFont text-3xl font-bold'>Impact Stories</h2>

      <div className='grid grid-cols-1 lg:grid-cols-2 lg:grid-rows-1 lg:gap-x-36 gap-y-5 lg:gap-2 w-11/12 md:w-10/12'>
        <div>
          <h3 className='font-semibold text-lg text-textColor-300 mb-1 md:mb-1.5'>Abel Tsegaye</h3>
          <p className='text-base font-medium text-textColor-200 mb-3 md:mb-5'>Software Engineer at Google</p>
          <p className='text-textColor-100 &apos; font-normal md:text-left mb-6 md:mb-8'>
            &ldquo; When I joined A2SV in 2019, I found the concept of data structures and algorithms quite challenging. A2SV&apos;s smooth learning process and dedicated team molded me to see the peak of my abilities. Through A2SV&apos;s effective education and continual support, I passed Google&apos;s internship interviews and attended a summer internship at Google in Amsterdam. However, the A2SV program and training is beyond technical education and interview preparation. As an A2SVian, I also learned the values of putting humanity first, giving back to our community, and utilizing teamwork with my colleagues, which I can now consider my big family. After completing three remarkable months at Google, I was offered a full-time position at Google&apos;s London office for 2022. &rdquo;
          </p>

          <button className='text-sm text-white font-medium bg-primaryColor px-9 py-2.5 rounded'>See more</button>
        </div>
        <div>
          <div className="grid grid-cols-2 md:grid-cols-3 md:grid-rows-3 gap-2">
            <div className="md:col-start-2 bg-black h-40 md:w-32 text-white">
              <Image
                src={person1}
                alt='person 1'
                className='h-40 w-32'
              />
            </div>
            <div className="md:col-start-3 md:row-start-2 bg-black h-40 md:w-32 text-white  md:-mt-20">
              <Image
                src={person1}
                alt='person 1'
                className='h-40 w-32'
              />
            </div>
            <div className="md:col-start-2 md:row-start-2 bg-black h-40 md:w-32 text-white">
              <Image
                src={person1}
                alt='person 1'
                className='h-40 w-32'
              />
            </div>
            <div className="md:col-start-1 md:row-start-2 bg-black h-40 md:w-32 text-white md:-mt-20">
              <Image
                src={person1}
                alt='person 1'
                className='h-40 w-32'
              />
            </div>
            <div className="md:row-start-3 bg-black h-40 md:w-32 text-white md:-mt-20">
              <Image
                src={person1}
                alt='person 1'
                className='h-40 w-32'
              />
            </div>
            <div className='md:col-start-3 md:row-start-3 bg-black h-40 md:w-32 text-white  md:-mt-20'>
              <Image
                src={person1}
                alt='person 1'
                className='h-40 w-32'
              />
            </div>
            <div className="md:row-start-3 bg-black h-40 md:w-32 text-white">
              <Image
                src={person1}
                alt='person 1'
                className='h-40 w-32'
              />
            </div>
          </div>
        </div>
      </div>
    </section>
  );
};

export default ImpactStoriesSection;