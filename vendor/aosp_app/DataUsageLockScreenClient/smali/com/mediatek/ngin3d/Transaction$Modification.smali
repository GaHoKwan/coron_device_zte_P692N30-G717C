.class public abstract Lcom/mediatek/ngin3d/Transaction$Modification;
.super Ljava/lang/Object;
.source "Transaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ngin3d/Transaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "Modification"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ngin3d/Transaction;


# direct methods
.method protected constructor <init>(Lcom/mediatek/ngin3d/Transaction;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/mediatek/ngin3d/Transaction$Modification;->this$0:Lcom/mediatek/ngin3d/Transaction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract apply()V
.end method
