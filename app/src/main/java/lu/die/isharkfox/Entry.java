package lu.die.isharkfox;

import java.lang.reflect.Method;

import de.robv.android.xposed.IXposedHookLoadPackage;
import de.robv.android.xposed.XC_MethodHook;
import de.robv.android.xposed.XposedBridge;
import de.robv.android.xposed.XposedHelpers;
import de.robv.android.xposed.callbacks.XC_LoadPackage;

public class Entry implements IXposedHookLoadPackage {
    @Override
    public void handleLoadPackage(XC_LoadPackage.LoadPackageParam lpparam) throws Throwable {
        if(!"com.blackshark.sharkman".equals(lpparam.packageName))return;
        try{
            Class<?> classNameToHook = lpparam.classLoader.loadClass("com.blackshark.sharkman.MainActivity$checkSharkManState$1");
            Method method = classNameToHook.getDeclaredMethod("run");
            XposedBridge.hookMethod(method, new XC_MethodHook() {
                @Override
                protected void beforeHookedMethod(MethodHookParam param) throws Throwable {
                    super.beforeHookedMethod(param);
                    param.setResult(null);
                }
            });
        }catch (Exception e)
        {
            e.printStackTrace();
        }
        try{
            Class<?> classNameToHook = lpparam.classLoader.loadClass("com.blackshark.sharkman.upgrade.UpgradeManager");
            for(Method method : classNameToHook.getDeclaredMethods())
            {
                if("checkUpgrade".equals(method.getName()))
                    XposedBridge.hookMethod(method, new XC_MethodHook() {
                        @Override
                        protected void beforeHookedMethod(MethodHookParam param) throws Throwable {
                            super.beforeHookedMethod(param);
                            param.setResult(null);
                        }
                    });
            }
        }catch (Exception e)
        {
            e.printStackTrace();
        }
    }
}
