.class public abstract Lorg/qiyi/pluginlibrary/pm/IPluginUninstallCallBack$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Lorg/qiyi/pluginlibrary/pm/IPluginUninstallCallBack;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "org.qiyi.pluginlibrary.pm.IPluginUninstallCallBack"

    invoke-virtual {p0, p0, v0}, Lorg/qiyi/pluginlibrary/pm/IPluginUninstallCallBack$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static u(Landroid/os/IBinder;)Lorg/qiyi/pluginlibrary/pm/IPluginUninstallCallBack;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "org.qiyi.pluginlibrary.pm.IPluginUninstallCallBack"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lorg/qiyi/pluginlibrary/pm/IPluginUninstallCallBack;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/qiyi/pluginlibrary/pm/IPluginUninstallCallBack;

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/qiyi/pluginlibrary/pm/con;

    invoke-direct {v0, p0}, Lorg/qiyi/pluginlibrary/pm/con;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3

    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    const-string/jumbo v1, "org.qiyi.pluginlibrary.pm.IPluginUninstallCallBack"

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string/jumbo v1, "org.qiyi.pluginlibrary.pm.IPluginUninstallCallBack"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lorg/qiyi/pluginlibrary/pm/IPluginUninstallCallBack$Stub;->bb(Ljava/lang/String;I)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
