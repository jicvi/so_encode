.class Lcom/android/share/camera/ui/bl;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic pQ:Lcom/android/share/camera/ui/bc;


# direct methods
.method constructor <init>(Lcom/android/share/camera/ui/bc;)V
    .locals 0

    iput-object p1, p0, Lcom/android/share/camera/ui/bl;->pQ:Lcom/android/share/camera/ui/bc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
