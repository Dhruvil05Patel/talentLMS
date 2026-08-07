"use client";

import { Search, LayoutGrid, Table2 } from "lucide-react";
import { ViewMode } from "../types/summarizer";

interface FilterBarProps {
  search: string;
  setSearch: (value: string) => void;

  course: string;
  setCourse: (value: string) => void;

  group: string;
  setGroup: (value: string) => void;

  risk: string;
  setRisk: (value: string) => void;

  courses: string[];
  groups: string[];

  view: ViewMode;
  setView: (view: ViewMode) => void;
}

export default function FilterBar({
  search,
  setSearch,
  course,
  setCourse,
  group,
  setGroup,
  risk,
  setRisk,
  courses,
  groups,
  view,
  setView,
}: FilterBarProps) {
  return (
    <div className="mb-8 rounded-2xl border border-gray-200 bg-white p-5 shadow-sm">
      <div className="grid gap-4 lg:grid-cols-6">
        <div className="relative lg:col-span-2">
          <Search
            size={18}
            className="absolute left-3 top-1/2 -translate-y-1/2 text-gray-400"
          />

          <input
            value={search}
            onChange={(e) => setSearch(e.target.value)}
            placeholder="Search learners..."
            className="w-full rounded-xl border border-gray-300 py-2 pl-10 pr-4 outline-none focus:border-blue-500"
          />
        </div>

        <select
          value={course}
          onChange={(e) => setCourse(e.target.value)}
          className="rounded-xl border border-gray-300 px-4 py-2"
        >
          <option value="all">All Courses</option>

          {courses.map((course) => (
            <option
              key={course}
              value={course}
            >
              {course}
            </option>
          ))}
        </select>

        <select
          value={group}
          onChange={(e) => setGroup(e.target.value)}
          className="rounded-xl border border-gray-300 px-4 py-2"
        >
          <option value="all">All Groups</option>

          {groups.map((group) => (
            <option
              key={group}
              value={group}
            >
              {group}
            </option>
          ))}
        </select>

        <select
          value={risk}
          onChange={(e) => setRisk(e.target.value)}
          className="rounded-xl border border-gray-300 px-4 py-2"
        >
          <option value="all">All Risk</option>
          <option value="on-track">On Track</option>
          <option value="at-risk">At Risk</option>
          <option value="overdue">Overdue</option>
        </select>

        <div className="flex overflow-hidden rounded-xl border border-gray-300">
          <button
            onClick={() => setView("cards")}
            className={`flex flex-1 items-center justify-center gap-2 py-2 ${
              view === "cards"
                ? "bg-blue-600 text-white"
                : "bg-white"
            }`}
          >
            <LayoutGrid size={16} />
            Cards
          </button>

          <button
            onClick={() => setView("table")}
            className={`flex flex-1 items-center justify-center gap-2 py-2 ${
              view === "table"
                ? "bg-blue-600 text-white"
                : "bg-white"
            }`}
          >
            <Table2 size={16} />
            Table
          </button>
        </div>
      </div>
    </div>
  );
}