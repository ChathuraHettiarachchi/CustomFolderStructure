package ${packageName}.alerts;

/**
 * Created by Choota.
 */

public class SampleAlert {
	private Context context;
	private SampleCallback callback;

	public SampleAlert(Context context, SampleCallback callback){
		this.context = context;
		this.callback = callback;
	}

	public void showAlert(){

	}

	public interface SampleCallback {
		void onSampleAlertOkPressed();
		void onSampleAlertCancelPressed();
	}

}
