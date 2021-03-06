.class public Lorg/qiyi/basecore/utils/HardwareConfigurationUtils;
.super Ljava/lang/Object;


# static fields
.field private static sEncodedMacAddress:Ljava/lang/String;

.field private static sIMEI:Ljava/lang/String;

.field private static sMaxCPUFreq:J

.field private static sOriginalMacAddress:Ljava/lang/String;

.field private static sTotalDeviceMem:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, -0x1

    sput-wide v0, Lorg/qiyi/basecore/utils/HardwareConfigurationUtils;->sMaxCPUFreq:J

    sput-wide v0, Lorg/qiyi/basecore/utils/HardwareConfigurationUtils;->sTotalDeviceMem:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCPUFreq()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lorg/qiyi/basecore/utils/HardwareConfigurationUtils;->getPhoneCPUFreqPrivate()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCpuNum()I
    .locals 1

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    return v0
.end method

.method public static getImei(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/qiyi/basecore/utils/HardwareConfigurationUtils;->sIMEI:Ljava/lang/String;

    invoke-static {v0}, Lorg/qiyi/basecore/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lorg/qiyi/basecore/utils/HardwareConfigurationUtils;->sIMEI:Ljava/lang/String;

    goto :goto_0

    :cond_1
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "android.permission.READ_PHONE_STATE"

    invoke-static {v0, v1}, Lorg/qiyi/basecore/utils/PermissionUtil;->hasSelfPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/qiyi/basecore/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    sput-object v0, Lorg/qiyi/basecore/utils/HardwareConfigurationUtils;->sIMEI:Ljava/lang/String;

    :cond_2
    sget-object v0, Lorg/qiyi/basecore/utils/HardwareConfigurationUtils;->sIMEI:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getMacAddress(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 3

    const/4 v1, 0x0

    if-nez p0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/qiyi/basecore/utils/HardwareConfigurationUtils;->sEncodedMacAddress:Ljava/lang/String;

    invoke-static {v0}, Lorg/qiyi/basecore/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    sget-object v0, Lorg/qiyi/basecore/utils/HardwareConfigurationUtils;->sEncodedMacAddress:Ljava/lang/String;

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/qiyi/basecore/utils/HardwareConfigurationUtils;->sOriginalMacAddress:Ljava/lang/String;

    invoke-static {v0}, Lorg/qiyi/basecore/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    sget-object v0, Lorg/qiyi/basecore/utils/HardwareConfigurationUtils;->sOriginalMacAddress:Ljava/lang/String;

    goto :goto_0

    :cond_2
    :try_start_0
    const-string/jumbo v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/qiyi/basecore/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    if-eqz p1, :cond_5

    :try_start_1
    const-string/jumbo v1, "utf-8"

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/qiyi/basecore/utils/HardwareConfigurationUtils;->sOriginalMacAddress:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_4
    :goto_2
    if-eqz p1, :cond_6

    sget-object v0, Lorg/qiyi/basecore/utils/HardwareConfigurationUtils;->sOriginalMacAddress:Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lorg/qiyi/android/corejar/b/nul;->isDebug()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v0}, Lorg/qiyi/basecore/utils/ExceptionUtils;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-static {}, Lorg/qiyi/android/corejar/b/nul;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {v0}, Lorg/qiyi/basecore/utils/ExceptionUtils;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_2

    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/qiyi/basecore/algorithm/com1;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/qiyi/basecore/utils/HardwareConfigurationUtils;->sEncodedMacAddress:Ljava/lang/String;

    goto :goto_2

    :cond_6
    sget-object v0, Lorg/qiyi/basecore/utils/HardwareConfigurationUtils;->sEncodedMacAddress:Ljava/lang/String;

    goto :goto_0
.end method

.method private static getPhoneCPUFreqPrivate()J
    .locals 12

    const-wide/16 v0, -0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    sget-wide v6, Lorg/qiyi/basecore/utils/HardwareConfigurationUtils;->sMaxCPUFreq:J

    cmp-long v3, v6, v0

    if-eqz v3, :cond_1

    sget-wide v0, Lorg/qiyi/basecore/utils/HardwareConfigurationUtils;->sMaxCPUFreq:J

    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    invoke-static {}, Lorg/qiyi/basecore/utils/HardwareConfigurationUtils;->getCpuNum()I

    move-result v7

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move v6, v2

    :goto_1
    if-ge v6, v7, :cond_c

    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    const-string/jumbo v5, "/sys/devices/system/cpu/cpu%d/cpufreq/cpuinfo_max_freq"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v3, v5, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_4

    if-eqz v4, :cond_2

    invoke-static {v4}, Lorg/qiyi/basecore/utils/FileUtils;->silentlyCloseCloseable(Ljava/io/Closeable;)V

    :cond_2
    if-eqz v4, :cond_3

    invoke-static {v4}, Lorg/qiyi/basecore/utils/FileUtils;->silentlyCloseCloseable(Ljava/io/Closeable;)V

    :cond_3
    :goto_2
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto :goto_1

    :cond_4
    :try_start_1
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v5, Ljava/io/BufferedReader;

    invoke-direct {v5, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result v9

    if-eqz v9, :cond_6

    if-eqz v5, :cond_5

    invoke-static {v5}, Lorg/qiyi/basecore/utils/FileUtils;->silentlyCloseCloseable(Ljava/io/Closeable;)V

    :cond_5
    if-eqz v3, :cond_3

    invoke-static {v3}, Lorg/qiyi/basecore/utils/FileUtils;->silentlyCloseCloseable(Ljava/io/Closeable;)V

    goto :goto_2

    :cond_6
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v5, :cond_7

    invoke-static {v5}, Lorg/qiyi/basecore/utils/FileUtils;->silentlyCloseCloseable(Ljava/io/Closeable;)V

    :cond_7
    if-eqz v3, :cond_3

    invoke-static {v3}, Lorg/qiyi/basecore/utils/FileUtils;->silentlyCloseCloseable(Ljava/io/Closeable;)V

    goto :goto_2

    :catch_0
    move-exception v2

    move-object v3, v4

    :goto_3
    :try_start_5
    invoke-static {v2}, Lorg/qiyi/basecore/utils/ExceptionUtils;->printStackTrace(Ljava/lang/Exception;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v4, :cond_8

    invoke-static {v4}, Lorg/qiyi/basecore/utils/FileUtils;->silentlyCloseCloseable(Ljava/io/Closeable;)V

    :cond_8
    if-eqz v3, :cond_0

    invoke-static {v3}, Lorg/qiyi/basecore/utils/FileUtils;->silentlyCloseCloseable(Ljava/io/Closeable;)V

    goto :goto_0

    :catch_1
    move-exception v2

    move-object v3, v4

    move-object v5, v4

    :goto_4
    :try_start_6
    invoke-static {v2}, Lorg/qiyi/basecore/utils/ExceptionUtils;->printStackTrace(Ljava/lang/Exception;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v5, :cond_9

    invoke-static {v5}, Lorg/qiyi/basecore/utils/FileUtils;->silentlyCloseCloseable(Ljava/io/Closeable;)V

    :cond_9
    if-eqz v3, :cond_3

    invoke-static {v3}, Lorg/qiyi/basecore/utils/FileUtils;->silentlyCloseCloseable(Ljava/io/Closeable;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v5, v4

    :goto_5
    if-eqz v5, :cond_a

    invoke-static {v5}, Lorg/qiyi/basecore/utils/FileUtils;->silentlyCloseCloseable(Ljava/io/Closeable;)V

    :cond_a
    if-eqz v4, :cond_b

    invoke-static {v4}, Lorg/qiyi/basecore/utils/FileUtils;->silentlyCloseCloseable(Ljava/io/Closeable;)V

    :cond_b
    throw v0

    :cond_c
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-static {v8}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sput-wide v0, Lorg/qiyi/basecore/utils/HardwareConfigurationUtils;->sMaxCPUFreq:J

    :cond_d
    sget-wide v0, Lorg/qiyi/basecore/utils/HardwareConfigurationUtils;->sMaxCPUFreq:J

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    move-object v5, v4

    move-object v4, v3

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object v4, v3

    goto :goto_5

    :catchall_3
    move-exception v0

    move-object v5, v4

    move-object v4, v3

    goto :goto_5

    :catch_2
    move-exception v2

    move-object v5, v4

    goto :goto_4

    :catch_3
    move-exception v2

    goto :goto_4

    :catch_4
    move-exception v2

    goto :goto_3

    :catch_5
    move-exception v2

    move-object v4, v5

    goto :goto_3
.end method

.method public static getPhoneGpuFreq()Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    new-instance v2, Ljava/io/File;

    const-string/jumbo v1, "/proc/gpufreq/gpufreq_opp_dump"

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v0, ""

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_2

    const-string/jumbo v4, "freq = "

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v4, v4, 0x7

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_2
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-static {v3}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result-object v0

    if-eqz v2, :cond_3

    invoke-static {v2}, Lorg/qiyi/basecore/utils/FileUtils;->silentlyCloseCloseable(Ljava/io/Closeable;)V

    :cond_3
    if-eqz v1, :cond_0

    invoke-static {v1}, Lorg/qiyi/basecore/utils/FileUtils;->silentlyCloseCloseable(Ljava/io/Closeable;)V

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v1, v0

    move-object v2, v0

    :goto_3
    :try_start_5
    const-string/jumbo v0, ""
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v2, :cond_4

    invoke-static {v2}, Lorg/qiyi/basecore/utils/FileUtils;->silentlyCloseCloseable(Ljava/io/Closeable;)V

    :cond_4
    if-eqz v1, :cond_0

    invoke-static {v1}, Lorg/qiyi/basecore/utils/FileUtils;->silentlyCloseCloseable(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    :goto_4
    if-eqz v2, :cond_5

    invoke-static {v2}, Lorg/qiyi/basecore/utils/FileUtils;->silentlyCloseCloseable(Ljava/io/Closeable;)V

    :cond_5
    if-eqz v1, :cond_6

    invoke-static {v1}, Lorg/qiyi/basecore/utils/FileUtils;->silentlyCloseCloseable(Ljava/io/Closeable;)V

    :cond_6
    throw v0

    :catchall_1
    move-exception v2

    move-object v6, v2

    move-object v2, v0

    move-object v0, v6

    goto :goto_4

    :catchall_2
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v2

    move-object v2, v0

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    goto :goto_2
.end method

.method public static getTotalMemo()J
    .locals 7

    const/4 v6, -0x1

    const/4 v2, 0x0

    sget-wide v0, Lorg/qiyi/basecore/utils/HardwareConfigurationUtils;->sTotalDeviceMem:J

    const-wide/16 v4, -0x1

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    sget-wide v0, Lorg/qiyi/basecore/utils/HardwareConfigurationUtils;->sTotalDeviceMem:J

    :goto_0
    return-wide v0

    :cond_0
    const-string/jumbo v0, "/proc/meminfo"

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v3, Ljava/io/InputStreamReader;

    const-string/jumbo v0, "UTF-8"

    invoke-direct {v3, v1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-result-object v0

    if-eqz v0, :cond_1

    move-object v2, v0

    :cond_1
    if-eqz v4, :cond_2

    invoke-static {v4}, Lorg/qiyi/basecore/utils/FileUtils;->silentlyCloseCloseable(Ljava/io/Closeable;)V

    :cond_2
    if-eqz v3, :cond_3

    invoke-static {v3}, Lorg/qiyi/basecore/utils/FileUtils;->silentlyCloseCloseable(Ljava/io/Closeable;)V

    :cond_3
    if-eqz v1, :cond_4

    invoke-static {v1}, Lorg/qiyi/basecore/utils/FileUtils;->silentlyCloseCloseable(Ljava/io/Closeable;)V

    :cond_4
    :goto_1
    if-nez v2, :cond_a

    const-wide/16 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    move-object v4, v2

    :goto_2
    :try_start_4
    invoke-static {v0}, Lorg/qiyi/basecore/utils/ExceptionUtils;->printStackTrace(Ljava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz v4, :cond_5

    invoke-static {v4}, Lorg/qiyi/basecore/utils/FileUtils;->silentlyCloseCloseable(Ljava/io/Closeable;)V

    :cond_5
    if-eqz v3, :cond_6

    invoke-static {v3}, Lorg/qiyi/basecore/utils/FileUtils;->silentlyCloseCloseable(Ljava/io/Closeable;)V

    :cond_6
    if-eqz v1, :cond_4

    invoke-static {v1}, Lorg/qiyi/basecore/utils/FileUtils;->silentlyCloseCloseable(Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v2

    move-object v4, v2

    :goto_3
    if-eqz v4, :cond_7

    invoke-static {v4}, Lorg/qiyi/basecore/utils/FileUtils;->silentlyCloseCloseable(Ljava/io/Closeable;)V

    :cond_7
    if-eqz v2, :cond_8

    invoke-static {v2}, Lorg/qiyi/basecore/utils/FileUtils;->silentlyCloseCloseable(Ljava/io/Closeable;)V

    :cond_8
    if-eqz v1, :cond_9

    invoke-static {v1}, Lorg/qiyi/basecore/utils/FileUtils;->silentlyCloseCloseable(Ljava/io/Closeable;)V

    :cond_9
    throw v0

    :cond_a
    const/16 v0, 0x3a

    :try_start_5
    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/16 v1, 0x6b

    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v0, v6, :cond_b

    if-eq v1, v6, :cond_b

    if-ge v0, v1, :cond_b

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    sput-wide v0, Lorg/qiyi/basecore/utils/HardwareConfigurationUtils;->sTotalDeviceMem:J
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :cond_b
    :goto_4
    sget-wide v0, Lorg/qiyi/basecore/utils/HardwareConfigurationUtils;->sTotalDeviceMem:J

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lorg/qiyi/basecore/utils/ExceptionUtils;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v4, v2

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v4, v2

    move-object v2, v3

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object v2, v3

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v3, v2

    move-object v4, v2

    goto :goto_2

    :catch_3
    move-exception v0

    move-object v4, v2

    goto :goto_2

    :catch_4
    move-exception v0

    goto :goto_2
.end method

.method public static isSupportGyro(Landroid/content/Context;)Z
    .locals 3

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    const-string/jumbo v0, "sensor"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    check-cast v0, Landroid/hardware/SensorManager;

    if-eqz v0, :cond_1

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method
