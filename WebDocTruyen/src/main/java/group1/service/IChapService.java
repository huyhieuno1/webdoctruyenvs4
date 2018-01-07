package group1.service;

import java.util.List;

import group1.model.Chap;

public interface IChapService {

	List<Chap> getListChap(int idTr);
	Chap getChap(int idChap);
	void addChap(Chap chap);
}
