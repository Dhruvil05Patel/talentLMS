import type { NudgeHistoryItem } from "../types/nudge";
import HistoryTable from "./HistoryTable";

export default function HistoryTab({ history }: { history: NudgeHistoryItem[] }) {
  return <HistoryTable items={history} />;
}