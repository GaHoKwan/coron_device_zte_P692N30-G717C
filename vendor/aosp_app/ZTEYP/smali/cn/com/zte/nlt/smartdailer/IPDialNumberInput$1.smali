.class Lcn/com/zte/nlt/smartdailer/IPDialNumberInput$1;
.super Ljava/lang/Object;
.source "IPDialNumberInput.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/zte/nlt/smartdailer/IPDialNumberInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/zte/nlt/smartdailer/IPDialNumberInput;


# direct methods
.method constructor <init>(Lcn/com/zte/nlt/smartdailer/IPDialNumberInput;)V
    .locals 0
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lcn/com/zte/nlt/smartdailer/IPDialNumberInput$1;->this$0:Lcn/com/zte/nlt/smartdailer/IPDialNumberInput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 79
    iget-object v1, p0, Lcn/com/zte/nlt/smartdailer/IPDialNumberInput$1;->this$0:Lcn/com/zte/nlt/smartdailer/IPDialNumberInput;

    #getter for: Lcn/com/zte/nlt/smartdailer/IPDialNumberInput;->IPnumber:Landroid/widget/EditText;
    invoke-static {v1}, Lcn/com/zte/nlt/smartdailer/IPDialNumberInput;->access$000(Lcn/com/zte/nlt/smartdailer/IPDialNumberInput;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, number:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xa

    if-le v1, v2, :cond_0

    .line 86
    iget-object v1, p0, Lcn/com/zte/nlt/smartdailer/IPDialNumberInput$1;->this$0:Lcn/com/zte/nlt/smartdailer/IPDialNumberInput;

    const v2, 0x7f08004a

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 95
    :goto_0
    return-void

    .line 90
    :cond_0
    iget-object v1, p0, Lcn/com/zte/nlt/smartdailer/IPDialNumberInput$1;->this$0:Lcn/com/zte/nlt/smartdailer/IPDialNumberInput;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "confirm = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/com/zte/nlt/smartdailer/IPDialNumberInput$1;->this$0:Lcn/com/zte/nlt/smartdailer/IPDialNumberInput;

    #getter for: Lcn/com/zte/nlt/smartdailer/IPDialNumberInput;->IPnumber:Landroid/widget/EditText;
    invoke-static {v3}, Lcn/com/zte/nlt/smartdailer/IPDialNumberInput;->access$000(Lcn/com/zte/nlt/smartdailer/IPDialNumberInput;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcn/com/zte/nlt/smartdailer/IPDialNumberInput;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcn/com/zte/nlt/smartdailer/IPDialNumberInput;->access$100(Lcn/com/zte/nlt/smartdailer/IPDialNumberInput;Ljava/lang/String;)V

    .line 91
    iget-object v1, p0, Lcn/com/zte/nlt/smartdailer/IPDialNumberInput$1;->this$0:Lcn/com/zte/nlt/smartdailer/IPDialNumberInput;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "which = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/com/zte/nlt/smartdailer/IPDialNumberInput$1;->this$0:Lcn/com/zte/nlt/smartdailer/IPDialNumberInput;

    #getter for: Lcn/com/zte/nlt/smartdailer/IPDialNumberInput;->which:Ljava/lang/String;
    invoke-static {v3}, Lcn/com/zte/nlt/smartdailer/IPDialNumberInput;->access$200(Lcn/com/zte/nlt/smartdailer/IPDialNumberInput;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcn/com/zte/nlt/smartdailer/IPDialNumberInput;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcn/com/zte/nlt/smartdailer/IPDialNumberInput;->access$100(Lcn/com/zte/nlt/smartdailer/IPDialNumberInput;Ljava/lang/String;)V

    .line 93
    iget-object v1, p0, Lcn/com/zte/nlt/smartdailer/IPDialNumberInput$1;->this$0:Lcn/com/zte/nlt/smartdailer/IPDialNumberInput;

    iget-object v2, p0, Lcn/com/zte/nlt/smartdailer/IPDialNumberInput$1;->this$0:Lcn/com/zte/nlt/smartdailer/IPDialNumberInput;

    #getter for: Lcn/com/zte/nlt/smartdailer/IPDialNumberInput;->which:Ljava/lang/String;
    invoke-static {v2}, Lcn/com/zte/nlt/smartdailer/IPDialNumberInput;->access$200(Lcn/com/zte/nlt/smartdailer/IPDialNumberInput;)Ljava/lang/String;

    move-result-object v2

    #calls: Lcn/com/zte/nlt/smartdailer/IPDialNumberInput;->putValue(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v0}, Lcn/com/zte/nlt/smartdailer/IPDialNumberInput;->access$300(Lcn/com/zte/nlt/smartdailer/IPDialNumberInput;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object v1, p0, Lcn/com/zte/nlt/smartdailer/IPDialNumberInput$1;->this$0:Lcn/com/zte/nlt/smartdailer/IPDialNumberInput;

    invoke-virtual {v1}, Lcn/com/zte/nlt/smartdailer/IPDialNumberInput;->finish()V

    goto :goto_0
.end method
