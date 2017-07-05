package com.sist.playlist.dao;

public class MusicVO {
	private int music_id;
	private String music_title;
	private String music_name;
	private String music_artist;
	private int music_count;		
	private int music_number;		// 곡 순서 
	private String music_lyrics;
	private int album_id;
	private int genre_id;
	
	//join(검색결과 찾기 용)
	private String album_name;
	
	
	public int getMusic_id() {
		return music_id;
	}
	public void setMusic_id(int music_id) {
		this.music_id = music_id;
	}
	public String getMusic_title() {
		return music_title;
	}
	public void setMusic_title(String music_title) {
		this.music_title = music_title;
	}
	public String getMusic_name() {
		return music_name;
	}
	public void setMusic_name(String music_name) {
		this.music_name = music_name;
	}
	public String getMusic_artist() {
		return music_artist;
	}
	public void setMusic_artist(String music_artist) {
		this.music_artist = music_artist;
	}
	public int getMusic_count() {
		return music_count;
	}
	public void setMusic_count(int music_count) {
		this.music_count = music_count;
	}
	public int getMusic_number() {
		return music_number;
	}
	public void setMusic_number(int music_number) {
		this.music_number = music_number;
	}
	public String getMusic_lyrics() {
		return music_lyrics;
	}
	public void setMusic_lyrics(String music_lyrics) {
		this.music_lyrics = music_lyrics;
	}
	public int getAlbum_id() {
		return album_id;
	}
	public void setAlbum_id(int album_id) {
		this.album_id = album_id;
	}
	public int getGenre_id() {
		return genre_id;
	}
	public void setGenre_id(int genre_id) {
		this.genre_id = genre_id;
	}
	public String getAlbum_name() {
		return album_name;
	}
	public void setAlbum_name(String album_name) {
		this.album_name = album_name;
	}
	
	
	
}
