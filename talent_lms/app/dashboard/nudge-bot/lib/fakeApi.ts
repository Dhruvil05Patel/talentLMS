import { mockHistory } from "../data/mockHistory";
import { mockOverview } from "../data/mockOverview";
import { mockRules } from "../data/mockRules";
import { mockSettings } from "../data/mockSettings";

export async function fetchNudgeBotData() {
  await new Promise((resolve) => setTimeout(resolve, 180));

  return {
    overview: mockOverview,
    rules: mockRules,
    history: mockHistory,
    settings: mockSettings,
  };
}