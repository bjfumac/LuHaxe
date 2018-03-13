package;
import unityengine.WWW;

/**
 * ...
 * @author ...
 */
class DataHelper 
{

	public static function WWWtoString(www:WWW):String 
	{
		return Tolua.tolstring(www.bytes).sub(0, www.bytesDownloaded);
	}
	
}