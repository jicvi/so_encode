.class public Lcom/iqiyi/publisher/entity/TabEntity;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/iqiyi/publisher/entity/TabEntity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private cWA:I

.field private cWB:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iqiyi/publisher/entity/com8;

    invoke-direct {v0}, Lcom/iqiyi/publisher/entity/com8;-><init>()V

    sput-object v0, Lcom/iqiyi/publisher/entity/TabEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/iqiyi/publisher/entity/TabEntity;->cWA:I

    iput-object p2, p0, Lcom/iqiyi/publisher/entity/TabEntity;->cWB:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/iqiyi/publisher/entity/TabEntity;->cWA:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iqiyi/publisher/entity/TabEntity;->cWB:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public azI()I
    .locals 1

    iget v0, p0, Lcom/iqiyi/publisher/entity/TabEntity;->cWA:I

    return v0
.end method

.method public azJ()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iqiyi/publisher/entity/TabEntity;->cWB:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/iqiyi/publisher/entity/TabEntity;->cWA:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/iqiyi/publisher/entity/TabEntity;->cWB:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
