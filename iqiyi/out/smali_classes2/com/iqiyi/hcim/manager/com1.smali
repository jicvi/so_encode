.class final Lcom/iqiyi/hcim/manager/com1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private CH()V
    .locals 1

    sget-object v0, Lcom/iqiyi/hcim/core/im/HCSDK;->INSTANCE:Lcom/iqiyi/hcim/core/im/HCSDK;

    invoke-virtual {v0}, Lcom/iqiyi/hcim/core/im/HCSDK;->getSDKContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/iqiyi/hcim/utils/HCTools;->isRunningForeground(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/iqiyi/hcim/manager/HeartbeatState;->ACTIVE:Lcom/iqiyi/hcim/manager/HeartbeatState;

    invoke-static {v0}, Lcom/iqiyi/hcim/manager/HeartbeatState;->access$200(Lcom/iqiyi/hcim/manager/HeartbeatState;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/iqiyi/hcim/manager/HeartbeatState;->SEC_ACTIVE:Lcom/iqiyi/hcim/manager/HeartbeatState;

    invoke-static {v0}, Lcom/iqiyi/hcim/manager/HeartbeatState;->access$200(Lcom/iqiyi/hcim/manager/HeartbeatState;)V

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/iqiyi/hcim/manager/HeartbeatState;->access$800()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, "HeartbeatState onLoginSuccess."

    invoke-static {v0}, Lcom/iqiyi/hcim/utils/L;->d(Ljava/lang/String;)V

    sget-object v0, Lcom/iqiyi/hcim/manager/com2;->aHw:[I

    invoke-static {}, Lcom/iqiyi/hcim/manager/HeartbeatState;->access$900()Lcom/iqiyi/hcim/manager/HeartbeatState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iqiyi/hcim/manager/HeartbeatState;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    :goto_0
    monitor-exit v1

    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/iqiyi/hcim/manager/com1;->CH()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
