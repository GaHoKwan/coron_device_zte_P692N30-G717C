.class Lcom/zte/heartyservice/common/datatype/ZTETextPicker$SetSelectionCommand;
.super Ljava/lang/Object;
.source "ZTETextPicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/common/datatype/ZTETextPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SetSelectionCommand"
.end annotation


# instance fields
.field private mSelectionEnd:I

.field private mSelectionStart:I

.field final synthetic this$0:Lcom/zte/heartyservice/common/datatype/ZTETextPicker;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/common/datatype/ZTETextPicker;)V
    .locals 0
    .parameter

    .prologue
    .line 1158
    iput-object p1, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker$SetSelectionCommand;->this$0:Lcom/zte/heartyservice/common/datatype/ZTETextPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1164
    iget-object v0, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker$SetSelectionCommand;->this$0:Lcom/zte/heartyservice/common/datatype/ZTETextPicker;

    #getter for: Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mInputText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->access$000(Lcom/zte/heartyservice/common/datatype/ZTETextPicker;)Landroid/widget/EditText;

    move-result-object v0

    iget v1, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker$SetSelectionCommand;->mSelectionStart:I

    iget v2, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker$SetSelectionCommand;->mSelectionEnd:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setSelection(II)V

    .line 1165
    return-void
.end method
