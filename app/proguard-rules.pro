# Add project specific ProGuard rules here.
# You can control the set of applied configuration files using the
# proguardFiles setting in build.gradle.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

# Uncomment this to preserve the line number information for
# debugging stack traces.
-keepattributes SourceFile,LineNumberTable,Signature,EnclosingMethod

# Keep kotlinx serializable classes
-keep class * implements kotlinx.serialization.KSerializer { *; }
-keep @kotlinx.serialization.Serializable class * { *; }
-keepclassmembers class * {
    @kotlinx.serialization.Serializable <fields>;
}

# Keep jlatexmath
-keep class org.scilab.forge.jlatexmath.** { *; }

# Ktor's IDEA debugger probe references desktop-only java.lang.management APIs.
# They are not available on Android and are safe to ignore in release shrink.
-dontwarn java.lang.management.ManagementFactory
-dontwarn java.lang.management.RuntimeMXBean

# 注意：-dontobfuscate 会全局关闭代码混淆。
# 如果你确定不需要混淆代码，请保留；如果需要正常混淆保护，请将下面这行注释掉。
-dontobfuscate

# Downloaded LiteRT-LM JNI looks up these classes and members by name.
-keep class com.google.ai.edge.litertlm.** { *; }
