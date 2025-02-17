"use client"

import Link from 'next/link'
import { usePathname, useRouter } from 'next/navigation'
export default function ProfileLayout(props: React.PropsWithChildren) {
    const currentRoute = usePathname();
    const router = useRouter()

    if (!localStorage.getItem('login')) {
        router.replace("/login")
        return <></>
    }

    return (
        <div
            className='font-primaryFont my-12 space-y-6 mx-4 md:mx-12 md:my-12'>
            <h1
                className="font-semibold text-3xl">Profile</h1>
            <ul
                className='flex space-x-6 md:space-x-12'>
                <li className={`font-secondaryFont font-semibold ${currentRoute === "/profile" ? "text-[#264FAD] pb-4 border-b-[4px] border-[#264FAD] rounded-sm" : " text-[#565656]"}`}><Link href='/profile'>Profile</Link></li>
                <li className={`font-secondaryFont font-semibold ${currentRoute === "/profile/myblogs" ? "text-[#264FAD] pb-4 border-b-[4px] border-[#264FAD] rounded-sm" : " text-[#565656]"}`}><Link href='/profile/myblogs'>My Blogs</Link></li>
                <li className={`font-secondaryFont font-semibold ${currentRoute === "/profile/accountsetting" ? "text-[#264FAD] pb-4 border-b-[4px] border-[#264FAD] rounded-sm" : " text-[#565656]"}`}><Link href='/profile/accountsetting'>Account Setting</Link></li>
            </ul>
            {props.children}
        </div>
    )
}