.class Lcom/facebook/react/animated/DivisionAnimatedNode;
.super Lcom/facebook/react/animated/ValueAnimatedNode;


# instance fields
.field private final mInputNodes:[I

.field private final mNativeAnimatedNodesManager:Lcom/facebook/react/animated/NativeAnimatedNodesManager;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/animated/NativeAnimatedNodesManager;)V
    .locals 4

    invoke-direct {p0}, Lcom/facebook/react/animated/ValueAnimatedNode;-><init>()V

    iput-object p2, p0, Lcom/facebook/react/animated/DivisionAnimatedNode;->mNativeAnimatedNodesManager:Lcom/facebook/react/animated/NativeAnimatedNodesManager;

    const-string/jumbo v0, "input"

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/facebook/react/animated/DivisionAnimatedNode;->mInputNodes:[I

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/facebook/react/animated/DivisionAnimatedNode;->mInputNodes:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/facebook/react/animated/DivisionAnimatedNode;->mInputNodes:[I

    invoke-interface {v1, v0}, Lcom/facebook/react/bridge/ReadableArray;->getInt(I)I

    move-result v3

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public update()V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/facebook/react/animated/DivisionAnimatedNode;->mInputNodes:[I

    array-length v0, v0

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Lcom/facebook/react/animated/DivisionAnimatedNode;->mNativeAnimatedNodesManager:Lcom/facebook/react/animated/NativeAnimatedNodesManager;

    iget-object v2, p0, Lcom/facebook/react/animated/DivisionAnimatedNode;->mInputNodes:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->getNodeById(I)Lcom/facebook/react/animated/AnimatedNode;

    move-result-object v0

    if-eqz v0, :cond_2

    instance-of v2, v0, Lcom/facebook/react/animated/ValueAnimatedNode;

    if-eqz v2, :cond_2

    check-cast v0, Lcom/facebook/react/animated/ValueAnimatedNode;

    invoke-virtual {v0}, Lcom/facebook/react/animated/ValueAnimatedNode;->getValue()D

    move-result-wide v2

    if-nez v1, :cond_0

    iput-wide v2, p0, Lcom/facebook/react/animated/DivisionAnimatedNode;->mValue:D

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    const-wide/16 v4, 0x0

    cmpl-double v0, v2, v4

    if-nez v0, :cond_1

    new-instance v0, Lcom/facebook/react/bridge/JSApplicationCausedNativeException;

    const-string/jumbo v1, "Detected a division by zero in Animated.divide node"

    invoke-direct {v0, v1}, Lcom/facebook/react/bridge/JSApplicationCausedNativeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-wide v4, p0, Lcom/facebook/react/animated/DivisionAnimatedNode;->mValue:D

    div-double v2, v4, v2

    iput-wide v2, p0, Lcom/facebook/react/animated/DivisionAnimatedNode;->mValue:D

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/facebook/react/bridge/JSApplicationCausedNativeException;

    const-string/jumbo v1, "Illegal node ID set as an input for Animated.divide node"

    invoke-direct {v0, v1}, Lcom/facebook/react/bridge/JSApplicationCausedNativeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    return-void
.end method
