'use client';

import Image from 'next/image';
import uploadsvg from '@/assets/images/upload.svg';
import dynamic from 'next/dynamic';
import { useDispatch } from 'react-redux';
import { useEffect, useState } from 'react';
// import { useSelector } from '@/lib/redux';

const DynamicTextEditor = dynamic(() => import('@/app/components/add-blog/TextEditor'), {
  ssr: false,
});
const AddBlog: React.FC = () => {
  const [file, setFile] = useState<File>();
  const [blogTitle, setBlogTitle] = useState<string>();
  const [selectedTags, setSelectedTags] = useState<string[]>(['development']);
  const [blogContent, setBlogContent] = useState<string>('');

  const dispatch = useDispatch();

  const handleSaveChanges = () => {
    const formData = new FormData();
    formData.append('image', file!);
    const blogData = {
      blogTitle,
      blogContent,
      image: formData,
      selectedTags,
    };
    console.log(blogData);
  };

  const handleCancel = () => {
    // Cancel click
  };

  const handleFileInputChange = (e: any) => {
    const selectedFile = e.target.files[0];
    if (selectedFile) {
      setFile(selectedFile);
    }
  };
  const handleUploadEvent = (e: any) => {
    document.getElementById('btnUpload')?.click();
  };
  const addTags = (tag: string) => {
    const found = selectedTags?.filter((el) => tag === el);
    if (!selectedTags.includes(tag)) {
      setSelectedTags([...selectedTags, tag]);
    } else {
      setSelectedTags((prev) => {
        return prev!.filter((el) => el !== tag);
      });
    }
  };

  useEffect(() => {
    console.log();
  }, [selectedTags]);

  return (
    <div className=" md:px-20 px-2 w-full font-primaryFont py-8">
      {/* main sect + sidebar */}
      <div className="grid md:grid-cols-12 md:gap-4">
        {/* main sect */}
        <div className="col-span-8">
          <div className="space-y-10">
            <div className="px-3 border-l-2 border-primaryColor outline-none focus:outline-none focus:border-0">
              <input
                type="text"
                className="p-2 font-primaryFont w-[95%]"
                placeholder="Enter the title of the blog"
                onChange={(e) => setBlogTitle(e.target.value)}
              />
            </div>
            <div className="w-full px-3 md:px-0 md:w-[95%] min-h-[318px] bg-[#F2F3F4]">
              <div className="flex flex-col items-center justify-center space-y-12">
                <div className="mt-24">
                  <Image
                    className="object-cover"
                    src={uploadsvg}
                    width={130}
                    alt="upload image"
                    priority={true}
                  />
                </div>
                <div>
                  <div className="md:text-[14px] text-[13px] flex flex-wrap items-center">
                    <p className="hidden md:block">Please,</p>
                    <button
                      className="border rounded-lg bg-white py-2 px-2 mx-2 hover:cursor-pointer shadow"
                      onClick={handleUploadEvent}
                    >
                      Upload File
                    </button>

                    <input
                      type="file"
                      className="hidden"
                      id="btnUpload"
                      style={{ display: 'none' }}
                      onChange={handleFileInputChange}
                    />

                    <p className=" sm:text-[#16] text-[#212934]">or choose file from</p>
                    <button className="border rounded-lg bg-white py-2 px-2 mx-2 hover:cursor-pointer shadow">
                      My Files
                    </button>
                  </div>
                </div>
              </div>
            </div>
            <div>
              <div>
                <DynamicTextEditor setBlogContent={setBlogContent} blogContent={blogContent} />
              </div>
            </div>
          </div>
        </div>

        {/* SIDEBAR */}
        <div className="col-span-4 md:w-[90%] md:border-l md:h-[55%]">
          <div className="ml-4 md:ml-12 ">
            <h2 className="font-semibold p-4 text-lg">Select Tag</h2>
            <div className="flex flex-wrap items-center  font-secondaryFont font-medium gap-2">
              <div
                className={` ${
                  selectedTags.includes('development')
                    ? '!text-primaryColor !border !border-primaryColor'
                    : ''
                } rounded-full px-3 py-2 bg-gray-200 border border-gray-200 text-sm text-center text-[#414141] hover:cursor-pointer`}
                onClick={() => addTags('development')}
              >
                Development
              </div>
              <div
                className={` ${
                  selectedTags.includes('sports')
                    ? '!text-primaryColor !border !border-primaryColor'
                    : ''
                } rounded-full px-3 py-2 bg-gray-200 border border-gray-200 text-sm text-center text-[#414141] hover:cursor-pointer`}
                onClick={() => addTags('sports')}
              >
                Sports
              </div>
              <div
                className={` ${
                  selectedTags.includes('Writing')
                    ? '!text-primaryColor !border !border-primaryColor'
                    : ''
                } rounded-full px-3 py-2 bg-gray-200 border border-gray-200 text-sm text-center text-[#414141] hover:cursor-pointer`}
                onClick={() => addTags('Writing')}
              >
                Writing
              </div>
              <div
                className={` ${
                  selectedTags.includes('Self Improvement')
                    ? '!text-primaryColor !border !border-primaryColor'
                    : ''
                } rounded-full px-3 py-2 bg-gray-200 border border-gray-200 text-sm text-center text-[#414141] hover:cursor-pointer`}
                onClick={() => addTags('Self Improvement')}
              >
                Self Improvement
              </div>
              <div
                className={` ${
                  selectedTags.includes('Technology')
                    ? '!text-primaryColor !border !border-primaryColor'
                    : ''
                } rounded-full px-3 py-2 bg-gray-200 border border-gray-200 text-sm text-center text-[#414141] hover:cursor-pointer`}
                onClick={() => addTags('Technology')}
              >
                Technology
              </div>
              <div
                className={` ${
                  selectedTags.includes('Social')
                    ? '!text-primaryColor !border !border-primaryColor'
                    : ''
                } rounded-full px-3 py-2 bg-gray-200 border border-gray-200 text-sm text-center text-[#414141] hover:cursor-pointer`}
                onClick={() => addTags('Social')}
              >
                Social
              </div>
              <div
                className={` ${
                  selectedTags.includes('Data Science')
                    ? '!text-primaryColor !border !border-primaryColor'
                    : ''
                } rounded-full px-3 py-2 bg-gray-200 border border-gray-200 text-sm text-center text-[#414141] hover:cursor-pointer`}
                onClick={() => addTags('Data Science')}
              >
                Data Science
              </div>
              <div
                className={` ${
                  selectedTags.includes('Programming')
                    ? '!text-primaryColor !border !border-primaryColor'
                    : ''
                } rounded-full px-3 py-2 bg-gray-200 border border-gray-200  text-sm text-center text-[#414141] hover:cursor-pointer`}
                onClick={() => addTags('Programming')}
              >
                Programming
              </div>
            </div>
          </div>
        </div>
      </div>
      <div className="grid-cols-12 grid w-[94%]">
        <div className="flex col-span-8 items-center justify-end space-x-8 mt-4 ">
          <button className="text-primaryColor text-sm" onClick={handleCancel}>
            Cancel
          </button>
          <button
            className="px-4 py-3 bg-primaryColor text-white rounded-md text-center shadow text-sm"
            onClick={handleSaveChanges}
          >
            Save Changes
          </button>
        </div>
      </div>
    </div>
  );
};

export default AddBlog;
