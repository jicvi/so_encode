.class public final Lcom/iqiyi/video/qyplayersdk/player/state/Completion;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/iqiyi/video/qyplayersdk/player/state/IState;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getStateType()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "Completion{}"

    return-object v0
.end method
