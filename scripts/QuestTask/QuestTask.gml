function QuestTask(_id, _questType, _questTargetEntity, _totalAmount) constructor{
	Finished = false;
	QuestType = _questType;
	QuestCurrentAmount = 0;
	QuestTargetEntity = _questTargetEntity;
	QuestTotalAmount = _totalAmount;
}