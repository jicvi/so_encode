.class public final enum Lcom/iqiyi/hcim/core/im/HCConfig$LoginType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iqiyi/hcim/core/im/HCConfig$LoginType;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iqiyi/hcim/core/im/HCConfig$LoginType;

.field public static final enum auto:Lcom/iqiyi/hcim/core/im/HCConfig$LoginType;

.field public static final enum manual:Lcom/iqiyi/hcim/core/im/HCConfig$LoginType;

.field public static final enum other:Lcom/iqiyi/hcim/core/im/HCConfig$LoginType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/iqiyi/hcim/core/im/HCConfig$LoginType;

    const-string/jumbo v1, "manual"

    invoke-direct {v0, v1, v2}, Lcom/iqiyi/hcim/core/im/HCConfig$LoginType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iqiyi/hcim/core/im/HCConfig$LoginType;->manual:Lcom/iqiyi/hcim/core/im/HCConfig$LoginType;

    new-instance v0, Lcom/iqiyi/hcim/core/im/HCConfig$LoginType;

    const-string/jumbo v1, "auto"

    invoke-direct {v0, v1, v3}, Lcom/iqiyi/hcim/core/im/HCConfig$LoginType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iqiyi/hcim/core/im/HCConfig$LoginType;->auto:Lcom/iqiyi/hcim/core/im/HCConfig$LoginType;

    new-instance v0, Lcom/iqiyi/hcim/core/im/HCConfig$LoginType;

    const-string/jumbo v1, "other"

    invoke-direct {v0, v1, v4}, Lcom/iqiyi/hcim/core/im/HCConfig$LoginType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iqiyi/hcim/core/im/HCConfig$LoginType;->other:Lcom/iqiyi/hcim/core/im/HCConfig$LoginType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/iqiyi/hcim/core/im/HCConfig$LoginType;

    sget-object v1, Lcom/iqiyi/hcim/core/im/HCConfig$LoginType;->manual:Lcom/iqiyi/hcim/core/im/HCConfig$LoginType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/iqiyi/hcim/core/im/HCConfig$LoginType;->auto:Lcom/iqiyi/hcim/core/im/HCConfig$LoginType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/iqiyi/hcim/core/im/HCConfig$LoginType;->other:Lcom/iqiyi/hcim/core/im/HCConfig$LoginType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/iqiyi/hcim/core/im/HCConfig$LoginType;->$VALUES:[Lcom/iqiyi/hcim/core/im/HCConfig$LoginType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/iqiyi/hcim/core/im/HCConfig$LoginType;
    .locals 1

    const-class v0, Lcom/iqiyi/hcim/core/im/HCConfig$LoginType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iqiyi/hcim/core/im/HCConfig$LoginType;

    return-object v0
.end method

.method public static values()[Lcom/iqiyi/hcim/core/im/HCConfig$LoginType;
    .locals 1

    sget-object v0, Lcom/iqiyi/hcim/core/im/HCConfig$LoginType;->$VALUES:[Lcom/iqiyi/hcim/core/im/HCConfig$LoginType;

    invoke-virtual {v0}, [Lcom/iqiyi/hcim/core/im/HCConfig$LoginType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iqiyi/hcim/core/im/HCConfig$LoginType;

    return-object v0
.end method
