.class public final enum Lorg/qiyi/android/corejar/model/d;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/qiyi/android/corejar/model/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum gGR:Lorg/qiyi/android/corejar/model/d;

.field public static final enum gGS:Lorg/qiyi/android/corejar/model/d;

.field private static final synthetic gGT:[Lorg/qiyi/android/corejar/model/d;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lorg/qiyi/android/corejar/model/d;

    const-string/jumbo v1, "jump2CinemaListByMovieIdTKUri"

    invoke-direct {v0, v1, v2}, Lorg/qiyi/android/corejar/model/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/qiyi/android/corejar/model/d;->gGR:Lorg/qiyi/android/corejar/model/d;

    new-instance v0, Lorg/qiyi/android/corejar/model/d;

    const-string/jumbo v1, "jump2MovieDetailTKUri"

    invoke-direct {v0, v1, v3}, Lorg/qiyi/android/corejar/model/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/qiyi/android/corejar/model/d;->gGS:Lorg/qiyi/android/corejar/model/d;

    const/4 v0, 0x2

    new-array v0, v0, [Lorg/qiyi/android/corejar/model/d;

    sget-object v1, Lorg/qiyi/android/corejar/model/d;->gGR:Lorg/qiyi/android/corejar/model/d;

    aput-object v1, v0, v2

    sget-object v1, Lorg/qiyi/android/corejar/model/d;->gGS:Lorg/qiyi/android/corejar/model/d;

    aput-object v1, v0, v3

    sput-object v0, Lorg/qiyi/android/corejar/model/d;->gGT:[Lorg/qiyi/android/corejar/model/d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/qiyi/android/corejar/model/d;
    .locals 1

    const-class v0, Lorg/qiyi/android/corejar/model/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/qiyi/android/corejar/model/d;

    return-object v0
.end method

.method public static values()[Lorg/qiyi/android/corejar/model/d;
    .locals 1

    sget-object v0, Lorg/qiyi/android/corejar/model/d;->gGT:[Lorg/qiyi/android/corejar/model/d;

    invoke-virtual {v0}, [Lorg/qiyi/android/corejar/model/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/qiyi/android/corejar/model/d;

    return-object v0
.end method
