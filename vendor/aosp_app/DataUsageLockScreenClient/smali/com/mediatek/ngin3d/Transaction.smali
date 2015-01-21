.class public abstract Lcom/mediatek/ngin3d/Transaction;
.super Ljava/lang/Object;
.source "Transaction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ngin3d/Transaction$Modification;
    }
.end annotation


# static fields
.field private static final MAX_OPERATIONS:I = 0x3e8

.field private static sCommittedOperations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/ngin3d/Transaction$Modification;",
            ">;"
        }
    .end annotation
.end field

.field private static sOperationsToApply:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/ngin3d/Transaction$Modification;",
            ">;"
        }
    .end annotation
.end field

.field private static sRenderCallback:Lcom/mediatek/ngin3d/presentation/PresentationEngine$RenderCallback;

.field private static sTransactionStack:Ljava/lang/ThreadLocal;


# instance fields
.field protected mAlphaMode:Lcom/mediatek/ngin3d/animation/Mode;

.field protected mAnimationDuration:I

.field protected mCompletion:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/mediatek/ngin3d/Transaction;->sTransactionStack:Ljava/lang/ThreadLocal;

    .line 84
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/mediatek/ngin3d/Transaction;->sCommittedOperations:Ljava/util/List;

    .line 85
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/mediatek/ngin3d/Transaction;->sOperationsToApply:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/mediatek/ngin3d/Transaction;->mAnimationDuration:I

    .line 60
    sget-object v0, Lcom/mediatek/ngin3d/animation/Mode;->EASE_IN_OUT_QUAD:Lcom/mediatek/ngin3d/animation/Mode;

    iput-object v0, p0, Lcom/mediatek/ngin3d/Transaction;->mAlphaMode:Lcom/mediatek/ngin3d/animation/Mode;

    .line 71
    return-void
.end method

.method public static applyOperations()V
    .locals 3

    .prologue
    .line 220
    sget-object v2, Lcom/mediatek/ngin3d/Transaction;->sOperationsToApply:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ngin3d/Transaction$Modification;

    .line 221
    .local v1, modification:Lcom/mediatek/ngin3d/Transaction$Modification;
    invoke-virtual {v1}, Lcom/mediatek/ngin3d/Transaction$Modification;->apply()V

    goto :goto_0

    .line 223
    .end local v1           #modification:Lcom/mediatek/ngin3d/Transaction$Modification;
    :cond_0
    sget-object v2, Lcom/mediatek/ngin3d/Transaction;->sOperationsToApply:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 224
    return-void
.end method

.method private static begin(Lcom/mediatek/ngin3d/Transaction;)V
    .locals 1
    .parameter "transaction"

    .prologue
    .line 108
    invoke-static {}, Lcom/mediatek/ngin3d/Transaction;->getTransactionStack()Ljava/util/Stack;

    move-result-object v0

    .line 109
    .local v0, stack:Ljava/util/Stack;,"Ljava/util/Stack<Lcom/mediatek/ngin3d/Transaction;>;"
    invoke-virtual {v0, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    return-void
.end method

.method public static beginImplicitAnimation()Lcom/mediatek/ngin3d/ImplicitAnimation;
    .locals 1

    .prologue
    .line 132
    new-instance v0, Lcom/mediatek/ngin3d/ImplicitAnimation;

    invoke-direct {v0}, Lcom/mediatek/ngin3d/ImplicitAnimation;-><init>()V

    .line 133
    .local v0, animation:Lcom/mediatek/ngin3d/ImplicitAnimation;
    invoke-static {v0}, Lcom/mediatek/ngin3d/Transaction;->begin(Lcom/mediatek/ngin3d/Transaction;)V

    .line 134
    return-object v0
.end method

.method public static beginPropertiesModification()Lcom/mediatek/ngin3d/BatchPropertyModification;
    .locals 1

    .prologue
    .line 141
    new-instance v0, Lcom/mediatek/ngin3d/BatchPropertyModification;

    invoke-direct {v0}, Lcom/mediatek/ngin3d/BatchPropertyModification;-><init>()V

    .line 142
    .local v0, modification:Lcom/mediatek/ngin3d/BatchPropertyModification;
    invoke-static {v0}, Lcom/mediatek/ngin3d/Transaction;->begin(Lcom/mediatek/ngin3d/Transaction;)V

    .line 143
    return-object v0
.end method

.method public static commit()V
    .locals 3

    .prologue
    .line 184
    invoke-static {}, Lcom/mediatek/ngin3d/Transaction;->getTransactionStack()Ljava/util/Stack;

    move-result-object v0

    .line 185
    .local v0, stack:Ljava/util/Stack;,"Ljava/util/Stack<Lcom/mediatek/ngin3d/Transaction;>;"
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 186
    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 187
    sget-object v1, Lcom/mediatek/ngin3d/Transaction;->sOperationsToApply:Ljava/util/List;

    sget-object v2, Lcom/mediatek/ngin3d/Transaction;->sCommittedOperations:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 188
    sget-object v1, Lcom/mediatek/ngin3d/Transaction;->sOperationsToApply:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x3e8

    if-le v1, v2, :cond_0

    .line 189
    new-instance v1, Lcom/mediatek/ngin3d/utils/Ngin3dException;

    const-string v2, "Too many operations in Transaction"

    invoke-direct {v1, v2}, Lcom/mediatek/ngin3d/utils/Ngin3dException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 192
    :cond_0
    sget-object v1, Lcom/mediatek/ngin3d/Transaction;->sCommittedOperations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 193
    sget-object v1, Lcom/mediatek/ngin3d/Transaction;->sRenderCallback:Lcom/mediatek/ngin3d/presentation/PresentationEngine$RenderCallback;

    if-eqz v1, :cond_1

    .line 194
    sget-object v1, Lcom/mediatek/ngin3d/Transaction;->sRenderCallback:Lcom/mediatek/ngin3d/presentation/PresentationEngine$RenderCallback;

    invoke-interface {v1}, Lcom/mediatek/ngin3d/presentation/PresentationEngine$RenderCallback;->requestRender()V

    .line 197
    :cond_1
    return-void
.end method

.method public static commitAll()V
    .locals 3

    .prologue
    .line 203
    invoke-static {}, Lcom/mediatek/ngin3d/Transaction;->getTransactionStack()Ljava/util/Stack;

    move-result-object v0

    .line 204
    .local v0, stack:Ljava/util/Stack;,"Ljava/util/Stack<Lcom/mediatek/ngin3d/Transaction;>;"
    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 205
    sget-object v1, Lcom/mediatek/ngin3d/Transaction;->sOperationsToApply:Ljava/util/List;

    sget-object v2, Lcom/mediatek/ngin3d/Transaction;->sCommittedOperations:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 206
    sget-object v1, Lcom/mediatek/ngin3d/Transaction;->sOperationsToApply:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x3e8

    if-le v1, v2, :cond_0

    .line 207
    new-instance v1, Lcom/mediatek/ngin3d/utils/Ngin3dException;

    const-string v2, "Too many operations in Transaction"

    invoke-direct {v1, v2}, Lcom/mediatek/ngin3d/utils/Ngin3dException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 209
    :cond_0
    sget-object v1, Lcom/mediatek/ngin3d/Transaction;->sCommittedOperations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 211
    sget-object v1, Lcom/mediatek/ngin3d/Transaction;->sRenderCallback:Lcom/mediatek/ngin3d/presentation/PresentationEngine$RenderCallback;

    if-eqz v1, :cond_1

    .line 212
    sget-object v1, Lcom/mediatek/ngin3d/Transaction;->sRenderCallback:Lcom/mediatek/ngin3d/presentation/PresentationEngine$RenderCallback;

    invoke-interface {v1}, Lcom/mediatek/ngin3d/presentation/PresentationEngine$RenderCallback;->requestRender()V

    .line 214
    :cond_1
    return-void
.end method

.method public static getActive()Lcom/mediatek/ngin3d/Transaction;
    .locals 2

    .prologue
    .line 121
    invoke-static {}, Lcom/mediatek/ngin3d/Transaction;->getTransactionStack()Ljava/util/Stack;

    move-result-object v0

    .line 122
    .local v0, stack:Ljava/util/Stack;,"Ljava/util/Stack<Lcom/mediatek/ngin3d/Transaction;>;"
    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 123
    const/4 v1, 0x0

    .line 125
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ngin3d/Transaction;

    goto :goto_0
.end method

.method protected static getModificationList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/ngin3d/Transaction$Modification;",
            ">;"
        }
    .end annotation

    .prologue
    .line 100
    sget-object v0, Lcom/mediatek/ngin3d/Transaction;->sCommittedOperations:Ljava/util/List;

    return-object v0
.end method

.method private static getTransactionStack()Ljava/util/Stack;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Stack",
            "<",
            "Lcom/mediatek/ngin3d/Transaction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    sget-object v1, Lcom/mediatek/ngin3d/Transaction;->sTransactionStack:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Stack;

    .line 89
    .local v0, stack:Ljava/util/Stack;,"Ljava/util/Stack<Lcom/mediatek/ngin3d/Transaction;>;"
    if-nez v0, :cond_0

    .line 90
    new-instance v0, Ljava/util/Stack;

    .end local v0           #stack:Ljava/util/Stack;,"Ljava/util/Stack<Lcom/mediatek/ngin3d/Transaction;>;"
    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    .line 91
    .restart local v0       #stack:Ljava/util/Stack;,"Ljava/util/Stack<Lcom/mediatek/ngin3d/Transaction;>;"
    sget-object v1, Lcom/mediatek/ngin3d/Transaction;->sTransactionStack:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 93
    :cond_0
    return-object v0
.end method

.method public static setAlphaMode(Lcom/mediatek/ngin3d/animation/Mode;)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 164
    invoke-static {}, Lcom/mediatek/ngin3d/Transaction;->getActive()Lcom/mediatek/ngin3d/Transaction;

    move-result-object v0

    .line 165
    .local v0, transaction:Lcom/mediatek/ngin3d/Transaction;
    if-eqz v0, :cond_0

    .line 166
    iput-object p0, v0, Lcom/mediatek/ngin3d/Transaction;->mAlphaMode:Lcom/mediatek/ngin3d/animation/Mode;

    .line 168
    :cond_0
    return-void
.end method

.method public static setAnimationDuration(I)V
    .locals 1
    .parameter "duration"

    .prologue
    .line 152
    invoke-static {}, Lcom/mediatek/ngin3d/Transaction;->getActive()Lcom/mediatek/ngin3d/Transaction;

    move-result-object v0

    .line 153
    .local v0, transaction:Lcom/mediatek/ngin3d/Transaction;
    if-eqz v0, :cond_0

    .line 154
    iput p0, v0, Lcom/mediatek/ngin3d/Transaction;->mAnimationDuration:I

    .line 156
    :cond_0
    return-void
.end method

.method public static setCompletion(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "completion"

    .prologue
    .line 174
    invoke-static {}, Lcom/mediatek/ngin3d/Transaction;->getActive()Lcom/mediatek/ngin3d/Transaction;

    move-result-object v0

    .line 175
    .local v0, transaction:Lcom/mediatek/ngin3d/Transaction;
    if-eqz v0, :cond_0

    .line 176
    iput-object p0, v0, Lcom/mediatek/ngin3d/Transaction;->mCompletion:Ljava/lang/Runnable;

    .line 178
    :cond_0
    return-void
.end method

.method public static setRenderCallback(Lcom/mediatek/ngin3d/presentation/PresentationEngine$RenderCallback;)V
    .locals 0
    .parameter "renderCallback"

    .prologue
    .line 231
    sput-object p0, Lcom/mediatek/ngin3d/Transaction;->sRenderCallback:Lcom/mediatek/ngin3d/presentation/PresentationEngine$RenderCallback;

    .line 232
    return-void
.end method


# virtual methods
.method public abstract addPropertyModification(Lcom/mediatek/ngin3d/Actor;Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)V
.end method
