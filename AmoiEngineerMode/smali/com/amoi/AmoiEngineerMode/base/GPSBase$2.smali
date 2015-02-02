.class Lcom/amoi/AmoiEngineerMode/base/GPSBase$2;
.super Ljava/lang/Object;
.source "GPSBase.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amoi/AmoiEngineerMode/base/GPSBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amoi/AmoiEngineerMode/base/GPSBase;


# direct methods
.method constructor <init>(Lcom/amoi/AmoiEngineerMode/base/GPSBase;)V
    .locals 0
    .parameter

    .prologue
    .line 397
    iput-object p1, p0, Lcom/amoi/AmoiEngineerMode/base/GPSBase$2;->this$0:Lcom/amoi/AmoiEngineerMode/base/GPSBase;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 399
    const/16 v0, 0x54

    if-ne p2, v0, :cond_0

    .line 400
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/GPSBase$2;->this$0:Lcom/amoi/AmoiEngineerMode/base/GPSBase;

    invoke-virtual {v0, p2, p3}, Lcom/amoi/AmoiEngineerMode/base/GPSBase;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 402
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
