.class Lcom/amoi/AmoiEngineerMode/base/CameraBase$2;
.super Ljava/lang/Object;
.source "CameraBase.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amoi/AmoiEngineerMode/base/CameraBase;->buildView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amoi/AmoiEngineerMode/base/CameraBase;


# direct methods
.method constructor <init>(Lcom/amoi/AmoiEngineerMode/base/CameraBase;)V
    .locals 0
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lcom/amoi/AmoiEngineerMode/base/CameraBase$2;->this$0:Lcom/amoi/AmoiEngineerMode/base/CameraBase;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/CameraBase$2;->this$0:Lcom/amoi/AmoiEngineerMode/base/CameraBase;

    invoke-virtual {v0}, Lcom/amoi/AmoiEngineerMode/base/CameraBase;->takePicture()V

    .line 111
    return-void
.end method
