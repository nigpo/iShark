# Add project specific ProGuard rules here.
# By default, the flags in this file are appended to flags specified
# in D:\Android\sdk/tools/proguard/proguard-android.txt
# You can edit the include path and order by changing the proguardFiles
# directive in build.gradle.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

# Add any project specific keep options here:

# If your project uses WebView with JS, uncomment the following
# and specify the fully qualified class name to the JavaScript interface
# class:
#-keepclassmembers class fqcn.of.javascript.interface.for.webview {
#   public *;
#}
-dontusemixedcaseclassnames
-dontskipnonpubliclibraryclasses
-verbose
-ignorewarnings

-dontshrink
#指定代码的压缩级别
-optimizationpasses 15

#包明不混合大小写
-dontusemixedcaseclassnames

#不去忽略非公共的库类
-dontskipnonpubliclibraryclasses

 #优化  不优化输入的类文件
-dontoptimize

 #不做预校验
-dontpreverify

 #混淆时是否记录日志
-verbose

 # 混淆时所采用的算法
-optimizations !code/simplification/arithmetic,!field/*,!class/merging/*

#保护注解
-keepattributes *Annotation*

# 保持哪些类不被混淆
-keep public class * extends android.app.Fragment
-keep public class * extends android.app.Activity
-keep public class * extends android.app.Application
-keep public class * extends android.app.Service
-keep public class * extends android.content.BroadcastReceiver
-keep public class * extends android.content.ContentProvider
-keep public class * extends android.app.backup.BackupAgentHelper
-keep public class * extends android.preference.Preference
-keep public class com.android.vending.licensing.ILicensingService
#如果有引用v4包可以添加下面这行
-keep public class * extends android.support.v4.app.Fragment

#-keeps
-keepattributes Signature, Annotation
-keep public class * extends androidx.annotation.** { *; }
-keep public class * extends androidx.core.content.FileProvider
-keep class com.simple.spiderman.** { *; }
-keepnames class com.simple.spiderman.** { *; }
-keep class com.google.gson.** {*;}
-keep class org.apache.http.** {*;}
#-keep class sun.misc.Unsafe { *; }
-keep class okhttp3.** { *; }
-keep class okio.** { *; }
-keep class com.alibaba.** { *; }
-keep class retrofit2.** { *; }
-keep public class de.** {
    !private <fields>;
    !private <methods>;
}
-keep public class com.sk.manager.pipe.VirtualStorageManager {
   public *;
}
-keep public class com.sk.spatch.kt.mv2.ModifyV2 {
    public *;
}
-keep public class com.sk.manager.pipe.VPackageManager {
                                                             public *;
                                                          }
-keep public class com.sk.manager.pipe.NewActivityManager {
                                                                public *;
                                                             }
-keep public class com.sk.spatch.act.XHome {
                                                                public *;
                                                             }
-keep public class com.sk.svm.conn.remote.InstallOptions {
                                                               public *;
                                                            }
-keep public class java.util.** {
                                                               public *;
                                                            }
-keep public class com.sk.svm.local.client.core.** {
                                                      public *;
                                                   }
-keep public class com.sk.svm.local.os.** {
                                             public *;
                                          }
-keep public class com.sk.svm.qihoo.helper.DexOptimizer
{
                                                          public *;
                                                       }
-keep public class com.sk.svm.conn.remote.InstalledAppInfo {
                                                              public *;
                                                           }
-keep public class com.sk.HookCallerGo.HookModuleUtils {
                                                         public *;
                                                      }
-keep public class com.sk.svm.conn.remote.InstallResult {
                                                         public *;
                                                      }
-keep class com.swift.** { *; }
-keep class com.tencent.stat.*{*;}
-keep class com.tencent.mid.*{*;}

-dontwarn com.tencent.tinker.anno.AnnotationProcessor
-keep @com.tencent.tinker.anno.DefaultLifeCycle public class *

-keep public class com.sk.cpuabi.RUtils {
    public *;
}

-keep public class com.tencent.tinker.entry.ApplicationLifeCycle {
    public *;
}
-keep public class * implements com.tencent.tinker.entry.ApplicationLifeCycle {
    public *;
}

-keep public class com.tencent.tinker.loader.TinkerLoader {
    public *;
}
-keep public class * extends com.tencent.tinker.loader.TinkerLoader {
    public *;
}

-keep public class com.tencent.tinker.loader.TinkerTestDexLoad {
    public *;
}

-keep public class com.tencent.tinker.loader.TinkerTestDexLoad {
    public *;
}

-keep public class com.tencent.tinker.entry.TinkerApplicationInlineFence {
    public *;
}

-keep public class com.tencent.tinker.loader.** {
    public *;
}

-keep class tinker.sample.android.app.SampleApplication {
    public *;
}
#忽略警告
#-ignorewarning

##记录生成的日志数据,gradle build时在本项目根目录输出##

#apk 包内所有 class 的内部结构
-dump class_files.txt
#未混淆的类和成员
-printseeds seeds.txt
#列出从 apk 中删除的代码
-printusage unused.txt
#混淆前后的映射
-printmapping mapping.txt

########记录生成的日志数据，gradle build时 在本项目根目录输出-end######


#####混淆保护自己项目的部分代码以及引用的第三方jar包library#######

#-libraryjars libs/umeng-analytics-v5.2.4.jar

#三星应用市场需要添加:sdk-v1.0.0.jar,look-v1.0.1.jar
#-libraryjars libs/sdk-v1.0.0.jar
#-libraryjars libs/look-v1.0.1.jar

#如果不想混淆 keep 掉
#-keep class com.lippi.recorder.iirfilterdesigner.** {*; }
#项目特殊处理代码

#忽略警告
#-dontwarn com.lippi.recorder.utils**
-dontwarn okio.**
-dontwarn retrofit2.**
-dontwarn com.squareup.okhttp.internal.**
#保留一个完整的包
#-keep class com.lippi.recorder.utils.** {
#    *;
# }

#-keep class  com.lippi.recorder.utils.AudioRecorder{*;}


#如果引用了v4或者v7包
-dontwarn android.support.**

####混淆保护自己项目的部分代码以及引用的第三方jar包library-end####

-keep public class * extends android.view.View {
    public <init>(android.content.Context);
    public <init>(android.content.Context, android.util.AttributeSet);
    public <init>(android.content.Context, android.util.AttributeSet, int);
    public void set*(...);
}

-keep public class * extends de.robv.android.xposed.IXposedHookLoadPackage

#保持 native 方法不被混淆
#           -keepclasseswithmembernames class * {
#               native <methods>;
#           }

# Keep names - Native method names. Keep all native class/method names.
-keepclasseswithmembers,allowshrinking class * {
    native <methods>;
}

#保持自定义控件类不被混淆
-keepclasseswithmembers class * {
    public <init>(android.content.Context, android.util.AttributeSet);
}

-keep @interface com.sk.injector.hook.annotations.** {*;}
-keep @com.sk.svm.qihoo.helper.Keep class *
-keepclassmembers class * {
    @com.sk.svm.qihoo.helper.Keep *;
}

-keepclasseswithmembernames class * {
    native <methods>;
}
# android
-keep class android.**{
    *;
}
-keep @interface mirror.** {*;}
-keepclassmembers class mirror.**{
   public *;
}

-keep class com.sk.svm.local.client.NativeEngine{
    public <methods>;
}

-keep @interface qihoo.helper.Keep {*;}
-keep @qihoo.helper.Keep class **{
    public <methods>;
}

-keepclassmembers class * extends android.os.Binder{
    public <methods>;
}

#保持自定义控件类不被混淆
-keepclassmembers class * extends android.app.Activity {
   public void *(android.view.View);
}

#保持 Parcelable 不被混淆
-keep class * implements android.os.Parcelable {
  public static final android.os.Parcelable$Creator *;
}

#保持 Serializable 不被混淆
-keepnames class * implements java.io.Serializable

#保持 Serializable 不被混淆并且enum 类也不被混淆
-keepclassmembers class * implements java.io.Serializable {
    static final long serialVersionUID;
    private static final java.io.ObjectStreamField[] serialPersistentFields;
    !static !transient <fields>;
    !private <fields>;
    !private <methods>;
    private void writeObject(java.io.ObjectOutputStream);
    private void readObject(java.io.ObjectInputStream);
    java.lang.Object writeReplace();
    java.lang.Object readResolve();
}

#保持枚举 enum 类不被混淆 如果混淆报错，建议直接使用上面的 -keepclassmembers class * implements java.io.Serializable即可
#-keepclassmembers enum * {
#  public static **[] values();
#  public static ** valueOf(java.lang.String);
#}

-keepclassmembers class * {
    public void *ButtonClicked(android.view.View);
}

#不混淆资源类
-keepclassmembers class **.R$* {
    public static <fields>;
}

-dontnote android.net.http.*
-dontnote org.apache.commons.codec.**
-dontnote org.apache.http.**
-dontnote com.google.gson.**
-dontnote okhttp3.**

-repackageclasses fuck
