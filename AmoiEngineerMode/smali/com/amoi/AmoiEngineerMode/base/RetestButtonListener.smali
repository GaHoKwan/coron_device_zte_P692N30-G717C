.class public Lcom/amoi/AmoiEngineerMode/base/RetestButtonListener;
.super Ljava/lang/Object;
.source "RetestButtonListener.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private activity:Lcom/amoi/AmoiEngineerMode/base/Retestable;


# direct methods
.method public constructor <init>(Lcom/amoi/AmoiEngineerMode/base/Retestable;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 16
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/amoi/AmoiEngineerMode/base/RetestButtonListener;->activity:Lcom/amoi/AmoiEngineerMode/base/Retestable;

    .line 18
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 21
    const-string v0, "RetestButtonListener"

    const-string v1, "retest button clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/RetestButtonListener;->activity:Lcom/amoi/AmoiEngineerMode/base/Retestable;

    invoke-interface {v0}, Lcom/amoi/AmoiEngineerMode/base/Retestable;->retest()V

    .line 23
    return-void
.end method
