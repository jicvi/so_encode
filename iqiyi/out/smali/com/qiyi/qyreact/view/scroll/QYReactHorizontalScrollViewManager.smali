.class public Lcom/qiyi/qyreact/view/scroll/QYReactHorizontalScrollViewManager;
.super Lcom/facebook/react/views/scroll/ReactHorizontalScrollViewManager;


# annotations
.annotation runtime Lcom/facebook/react/module/annotations/ReactModule;
    name = "QYHorizontalScrollView"
.end annotation


# static fields
.field protected static final REACT_CLASS:Ljava/lang/String; = "QYHorizontalScrollView"


# instance fields
.field private mFpsListener:Lcom/facebook/react/views/scroll/FpsListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/qiyi/qyreact/view/scroll/QYReactHorizontalScrollViewManager;-><init>(Lcom/facebook/react/views/scroll/FpsListener;)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/views/scroll/FpsListener;)V
    .locals 1

    invoke-direct {p0}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollViewManager;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qiyi/qyreact/view/scroll/QYReactHorizontalScrollViewManager;->mFpsListener:Lcom/facebook/react/views/scroll/FpsListener;

    iput-object p1, p0, Lcom/qiyi/qyreact/view/scroll/QYReactHorizontalScrollViewManager;->mFpsListener:Lcom/facebook/react/views/scroll/FpsListener;

    return-void
.end method


# virtual methods
.method public bridge synthetic createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Landroid/view/View;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/qiyi/qyreact/view/scroll/QYReactHorizontalScrollViewManager;->createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/qiyi/qyreact/view/scroll/QYReactHorizontalScrollView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/qiyi/qyreact/view/scroll/QYReactHorizontalScrollViewManager;->createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/qiyi/qyreact/view/scroll/QYReactHorizontalScrollView;

    move-result-object v0

    return-object v0
.end method

.method public createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/qiyi/qyreact/view/scroll/QYReactHorizontalScrollView;
    .locals 2

    new-instance v0, Lcom/qiyi/qyreact/view/scroll/QYReactHorizontalScrollView;

    iget-object v1, p0, Lcom/qiyi/qyreact/view/scroll/QYReactHorizontalScrollViewManager;->mFpsListener:Lcom/facebook/react/views/scroll/FpsListener;

    invoke-direct {v0, p1, v1}, Lcom/qiyi/qyreact/view/scroll/QYReactHorizontalScrollView;-><init>(Landroid/content/Context;Lcom/facebook/react/views/scroll/FpsListener;)V

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "QYHorizontalScrollView"

    return-object v0
.end method

.method public setVelocity(Lcom/qiyi/qyreact/view/scroll/QYReactHorizontalScrollView;I)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "velocity"
    .end annotation

    const/4 v0, 0x1

    if-lt p2, v0, :cond_0

    invoke-virtual {p1, p2}, Lcom/qiyi/qyreact/view/scroll/QYReactHorizontalScrollView;->setVelocity(I)V

    :cond_0
    return-void
.end method
