.class Lcom/amoi/AmoiEngineerMode/base/LcdBase$1;
.super Ljava/lang/Object;
.source "LcdBase.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amoi/AmoiEngineerMode/base/LcdBase;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amoi/AmoiEngineerMode/base/LcdBase;


# direct methods
.method constructor <init>(Lcom/amoi/AmoiEngineerMode/base/LcdBase;)V
    .locals 0
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/amoi/AmoiEngineerMode/base/LcdBase$1;->this$0:Lcom/amoi/AmoiEngineerMode/base/LcdBase;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/LcdBase$1;->this$0:Lcom/amoi/AmoiEngineerMode/base/LcdBase;

    invoke-virtual {v0}, Lcom/amoi/AmoiEngineerMode/base/LcdBase;->changeColor()V

    .line 55
    return-void
.end method
