import React from 'react';

interface Props {
  text: string;
}

const Chip: React.FC<Props> = ({ text }) => {
  return (
    <span className="md:px-9 px-4 md:py-3 py-2 rounded-3xl md:text-sm text-xs text-textColor-lightGray bg-textColor-light font-semibold">
      {text}
    </span>
  );
};

export default Chip;
