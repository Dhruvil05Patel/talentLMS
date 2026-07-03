"use client";

interface ProgressBarProps {
  value: number;
  height?: number;
  showLabel?: boolean;
  animated?: boolean;
}

export default function ProgressBar({
  value,
  height = 10,
  showLabel = true,
  animated = true,
}: ProgressBarProps) {
  const progress = Math.max(0, Math.min(100, value));

  const color =
    progress >= 80
      ? "bg-emerald-500"
      : progress >= 50
      ? "bg-amber-500"
      : "bg-red-500";

  return (
    <div className="w-full">
      <div
        className="w-full overflow-hidden rounded-full bg-gray-200"
        style={{ height }}
      >
        <div
          className={`${color} ${
            animated ? "transition-all duration-700 ease-out" : ""
          } rounded-full`}
          style={{
            width: `${progress}%`,
            height,
          }}
        />
      </div>

      {showLabel && (
        <div className="mt-2 flex items-center justify-between text-xs text-gray-500">
          <span>Progress</span>
          <span className="font-semibold text-gray-700">
            {progress}%
          </span>
        </div>
      )}
    </div>
  );
}