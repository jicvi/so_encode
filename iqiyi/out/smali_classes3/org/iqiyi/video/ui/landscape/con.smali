.class synthetic Lorg/iqiyi/video/ui/landscape/con;
.super Ljava/lang/Object;


# static fields
.field static final synthetic dmU:[I

.field static final synthetic gbl:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/iqiyi/qyplayercardview/h/lpt7;->values()[Lcom/iqiyi/qyplayercardview/h/lpt7;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/iqiyi/video/ui/landscape/con;->dmU:[I

    :try_start_0
    sget-object v0, Lorg/iqiyi/video/ui/landscape/con;->dmU:[I

    sget-object v1, Lcom/iqiyi/qyplayercardview/h/lpt7;->dqQ:Lcom/iqiyi/qyplayercardview/h/lpt7;

    invoke-virtual {v1}, Lcom/iqiyi/qyplayercardview/h/lpt7;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    invoke-static {}, Lorg/iqiyi/video/ui/em;->values()[Lorg/iqiyi/video/ui/em;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/iqiyi/video/ui/landscape/con;->gbl:[I

    :try_start_1
    sget-object v0, Lorg/iqiyi/video/ui/landscape/con;->gbl:[I

    sget-object v1, Lorg/iqiyi/video/ui/em;->gbR:Lorg/iqiyi/video/ui/em;

    invoke-virtual {v1}, Lorg/iqiyi/video/ui/em;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v0, Lorg/iqiyi/video/ui/landscape/con;->gbl:[I

    sget-object v1, Lorg/iqiyi/video/ui/em;->gbQ:Lorg/iqiyi/video/ui/em;

    invoke-virtual {v1}, Lorg/iqiyi/video/ui/em;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v0, Lorg/iqiyi/video/ui/landscape/con;->gbl:[I

    sget-object v1, Lorg/iqiyi/video/ui/em;->gbX:Lorg/iqiyi/video/ui/em;

    invoke-virtual {v1}, Lorg/iqiyi/video/ui/em;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    return-void

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_0
.end method
