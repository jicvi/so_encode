.class public final Lcom/iqiyi/hcim/proto/nano/ProtoPackets$QDevice;
.super Lcom/google/a/a/com2;


# static fields
.field private static volatile _emptyArray:[Lcom/iqiyi/hcim/proto/nano/ProtoPackets$QDevice;


# instance fields
.field public deviceId:Ljava/lang/String;

.field public deviceModel:Ljava/lang/String;

.field public deviceName:Ljava/lang/String;

.field public os:Ljava/lang/String;

.field public platform:Ljava/lang/String;

.field public pushDevice:Ljava/lang/String;

.field public pushToken:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/a/a/com2;-><init>()V

    invoke-virtual {p0}, Lcom/iqiyi/hcim/proto/nano/ProtoPackets$QDevice;->clear()Lcom/iqiyi/hcim/proto/nano/ProtoPackets$QDevice;

    return-void
.end method

.method public static emptyArray()[Lcom/iqiyi/hcim/proto/nano/ProtoPackets$QDevice;
    .locals 2

    sget-object v0, Lcom/iqiyi/hcim/proto/nano/ProtoPackets$QDevice;->_emptyArray:[Lcom/iqiyi/hcim/proto/nano/ProtoPackets$QDevice;

    if-nez v0, :cond_1

    sget-object v1, Lcom/google/a/a/prn;->uk:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/iqiyi/hcim/proto/nano/ProtoPackets$QDevice;->_emptyArray:[Lcom/iqiyi/hcim/proto/nano/ProtoPackets$QDevice;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/iqiyi/hcim/proto/nano/ProtoPackets$QDevice;

    sput-object v0, Lcom/iqiyi/hcim/proto/nano/ProtoPackets$QDevice;->_emptyArray:[Lcom/iqiyi/hcim/proto/nano/ProtoPackets$QDevice;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/iqiyi/hcim/proto/nano/ProtoPackets$QDevice;->_emptyArray:[Lcom/iqiyi/hcim/proto/nano/ProtoPackets$QDevice;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/a/a/aux;)Lcom/iqiyi/hcim/proto/nano/ProtoPackets$QDevice;
    .locals 1

    new-instance v0, Lcom/iqiyi/hcim/proto/nano/ProtoPackets$QDevice;

    invoke-direct {v0}, Lcom/iqiyi/hcim/proto/nano/ProtoPackets$QDevice;-><init>()V

    invoke-virtual {v0, p0}, Lcom/iqiyi/hcim/proto/nano/ProtoPackets$QDevice;->mergeFrom(Lcom/google/a/a/aux;)Lcom/iqiyi/hcim/proto/nano/ProtoPackets$QDevice;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/iqiyi/hcim/proto/nano/ProtoPackets$QDevice;
    .locals 1

    new-instance v0, Lcom/iqiyi/hcim/proto/nano/ProtoPackets$QDevice;

    invoke-direct {v0}, Lcom/iqiyi/hcim/proto/nano/ProtoPackets$QDevice;-><init>()V

    invoke-static {v0, p0}, Lcom/google/a/a/com2;->mergeFrom(Lcom/google/a/a/com2;[B)Lcom/google/a/a/com2;

    move-result-object v0

    check-cast v0, Lcom/iqiyi/hcim/proto/nano/ProtoPackets$QDevice;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/iqiyi/hcim/proto/nano/ProtoPackets$QDevice;
    .locals 1

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/iqiyi/hcim/proto/nano/ProtoPackets$QDevice;->deviceId:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/iqiyi/hcim/proto/nano/ProtoPackets$QDevice;->deviceModel:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/iqiyi/hcim/proto/nano/ProtoPackets$QDevice;->platform:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/iqiyi/hcim/proto/nano/ProtoPackets$QDevice;->os:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/iqiyi/hcim/proto/nano/ProtoPackets$QDevice;->pushToken:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/iqiyi/hcim/proto/nano/ProtoPackets$QDevice;->pushDevice:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/iqiyi/hcim/proto/nano/ProtoPackets$QDevice;->deviceName:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/iqiyi/hcim/proto/nano/ProtoPackets$QDevice;->cachedSize:I

    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    invoke-super {p0}, Lcom/google/a/a/com2;->computeSerializedSize()I

    move-result v0

    iget-object v1, p0, Lcom/iqiyi/hcim/proto/nano/ProtoPackets$QDevice;->deviceId:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/iqiyi/hcim/proto/nano/ProtoPackets$QDevice;->deviceId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/a/a/con;->c(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/iqiyi/hcim/proto/nano/ProtoPackets$QDevice;->deviceModel:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/iqiyi/hcim/proto/nano/ProtoPackets$QDevice;->deviceModel:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/a/a/con;->c(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/iqiyi/hcim/proto/nano/ProtoPackets$QDevice;->platform:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/iqiyi/hcim/proto/nano/ProtoPackets$QDevice;->platform:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/a/a/con;->c(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lcom/iqiyi/hcim/proto/nano/ProtoPackets$QDevice;->os:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/iqiyi/hcim/proto/nano/ProtoPackets$QDevice;->os:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/a/a/con;->c(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-object v1, p0, Lcom/iqiyi/hcim/proto/nano/ProtoPackets$QDevice;->pushToken:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/iqiyi/hcim/proto/nano/ProtoPackets$QDevice;->pushToken:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/a/a/con;->c(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget-object v1, p0, Lcom/iqiyi/hcim/proto/nano/ProtoPackets$QDevice;->pushDevice:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/iqiyi/hcim/proto/nano/ProtoPackets$QDevice;->pushDevice:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/a/a/con;->c(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget-object v1, p0, Lcom/iqiyi/hcim/proto/nano/ProtoPackets$QDevice;->deviceName:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/iqiyi/hcim/proto/nano/ProtoPackets$QDevice;->deviceName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/a/a/con;->c(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/a/a/aux;)Lcom/google/a/a/com2;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/iqiyi/hcim/proto/nano/ProtoPackets$QDevice;->mergeFrom(Lcom/google/a/a/aux;)Lcom/iqiyi/hcim/proto/nano/ProtoPackets$QDevice;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/a/a/aux;)Lcom/iqiyi/hcim/proto/nano/ProtoPackets$QDevice;
    .locals 1

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/a/a/aux;->fk()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-static {p1, v0}, Lcom/google/a/a/com4;->a(Lcom/google/a/a/aux;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/a/a/aux;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iqiyi/hcim/proto/nano/ProtoPackets$QDevice;->deviceId:Ljava/lang/String;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/a/a/aux;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iqiyi/hcim/proto/nano/ProtoPackets$QDevice;->deviceModel:Ljava/lang/String;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/a/a/aux;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iqiyi/hcim/proto/nano/ProtoPackets$QDevice;->platform:Ljava/lang/String;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/a/a/aux;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iqiyi/hcim/proto/nano/ProtoPackets$QDevice;->os:Ljava/lang/String;

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/a/a/aux;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iqiyi/hcim/proto/nano/ProtoPackets$QDevice;->pushToken:Ljava/lang/String;

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/a/a/aux;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iqiyi/hcim/proto/nano/ProtoPackets$QDevice;->pushDevice:Ljava/lang/String;

    goto :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/google/a/a/aux;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iqiyi/hcim/proto/nano/ProtoPackets$QDevice;->deviceName:Ljava/lang/String;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
    .end sparse-switch
.end method

.method public writeTo(Lcom/google/a/a/con;)V
    .locals 2

    iget-object v0, p0, Lcom/iqiyi/hcim/proto/nano/ProtoPackets$QDevice;->deviceId:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/iqiyi/hcim/proto/nano/ProtoPackets$QDevice;->deviceId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/a/a/con;->b(ILjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/iqiyi/hcim/proto/nano/ProtoPackets$QDevice;->deviceModel:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/iqiyi/hcim/proto/nano/ProtoPackets$QDevice;->deviceModel:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/a/a/con;->b(ILjava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/iqiyi/hcim/proto/nano/ProtoPackets$QDevice;->platform:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/iqiyi/hcim/proto/nano/ProtoPackets$QDevice;->platform:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/a/a/con;->b(ILjava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/iqiyi/hcim/proto/nano/ProtoPackets$QDevice;->os:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/iqiyi/hcim/proto/nano/ProtoPackets$QDevice;->os:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/a/a/con;->b(ILjava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/iqiyi/hcim/proto/nano/ProtoPackets$QDevice;->pushToken:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/iqiyi/hcim/proto/nano/ProtoPackets$QDevice;->pushToken:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/a/a/con;->b(ILjava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lcom/iqiyi/hcim/proto/nano/ProtoPackets$QDevice;->pushDevice:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x6

    iget-object v1, p0, Lcom/iqiyi/hcim/proto/nano/ProtoPackets$QDevice;->pushDevice:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/a/a/con;->b(ILjava/lang/String;)V

    :cond_5
    iget-object v0, p0, Lcom/iqiyi/hcim/proto/nano/ProtoPackets$QDevice;->deviceName:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x7

    iget-object v1, p0, Lcom/iqiyi/hcim/proto/nano/ProtoPackets$QDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/a/a/con;->b(ILjava/lang/String;)V

    :cond_6
    invoke-super {p0, p1}, Lcom/google/a/a/com2;->writeTo(Lcom/google/a/a/con;)V

    return-void
.end method
