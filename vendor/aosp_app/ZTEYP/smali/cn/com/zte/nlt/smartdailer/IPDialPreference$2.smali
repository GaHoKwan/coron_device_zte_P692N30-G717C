.class Lcn/com/zte/nlt/smartdailer/IPDialPreference$2;
.super Ljava/lang/Object;
.source "IPDialPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/com/zte/nlt/smartdailer/IPDialPreference;->showIpNumberInputDialog(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/zte/nlt/smartdailer/IPDialPreference;

.field final synthetic val$ipNumber:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcn/com/zte/nlt/smartdailer/IPDialPreference;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 192
    iput-object p1, p0, Lcn/com/zte/nlt/smartdailer/IPDialPreference$2;->this$0:Lcn/com/zte/nlt/smartdailer/IPDialPreference;

    iput-object p2, p0, Lcn/com/zte/nlt/smartdailer/IPDialPreference$2;->val$ipNumber:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 194
    iget-object v0, p0, Lcn/com/zte/nlt/smartdailer/IPDialPreference$2;->this$0:Lcn/com/zte/nlt/smartdailer/IPDialPreference;

    iget-object v1, p0, Lcn/com/zte/nlt/smartdailer/IPDialPreference$2;->this$0:Lcn/com/zte/nlt/smartdailer/IPDialPreference;

    #getter for: Lcn/com/zte/nlt/smartdailer/IPDialPreference;->Selectname:Ljava/lang/String;
    invoke-static {v1}, Lcn/com/zte/nlt/smartdailer/IPDialPreference;->access$000(Lcn/com/zte/nlt/smartdailer/IPDialPreference;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/com/zte/nlt/smartdailer/IPDialPreference$2;->val$ipNumber:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcn/com/zte/nlt/smartdailer/IPDialPreference;->putValue(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcn/com/zte/nlt/smartdailer/IPDialPreference;->access$100(Lcn/com/zte/nlt/smartdailer/IPDialPreference;Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcn/com/zte/nlt/smartdailer/IPDialPreference$2;->this$0:Lcn/com/zte/nlt/smartdailer/IPDialPreference;

    const-string v1, "refresh"

    #calls: Lcn/com/zte/nlt/smartdailer/IPDialPreference;->callChangeListener(Ljava/lang/Object;)Z
    invoke-static {v0, v1}, Lcn/com/zte/nlt/smartdailer/IPDialPreference;->access$200(Lcn/com/zte/nlt/smartdailer/IPDialPreference;Ljava/lang/Object;)Z

    .line 196
    return-void
.end method
