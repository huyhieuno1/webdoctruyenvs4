package group1.service;

import java.util.List;

import group1.model.Truyen;

public interface ITruyenService {

	List<Truyen> getListTr();
	List<Truyen> getListTr_TG(int id_TG);
	List<Truyen> getListTr_TL(int id_TL);
	Truyen preview(int id_Tr);
	Truyen findTr(String name);
	void saveTr(Truyen truyen);
	void updateTr(int id_Tr);
	void deleteTr(int id_Tr);
	
}
