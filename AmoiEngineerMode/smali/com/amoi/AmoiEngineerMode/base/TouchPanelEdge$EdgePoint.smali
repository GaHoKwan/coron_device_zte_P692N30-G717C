.class public Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge$EdgePoint;
.super Ljava/lang/Object;
.source "TouchPanelEdge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EdgePoint"
.end annotation


# instance fields
.field isChecked:Z

.field final synthetic this$0:Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;

.field x:I

.field y:I


# direct methods
.method public constructor <init>(Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;IIZ)V
    .locals 1
    .parameter
    .parameter "paramInt1"
    .parameter "paramInt2"
    .parameter "arg4"

    .prologue
    .line 293
    iput-object p1, p0, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge$EdgePoint;->this$0:Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 289
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge$EdgePoint;->isChecked:Z

    .line 294
    iput p2, p0, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge$EdgePoint;->x:I

    .line 295
    iput p3, p0, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge$EdgePoint;->y:I

    .line 296
    iput-boolean p4, p0, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge$EdgePoint;->isChecked:Z

    .line 297
    return-void
.end method
