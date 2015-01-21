.class Lcn/com/zte/nlt/smartdailer/IPDialNumberInput$2;
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
    .line 98
    iput-object p1, p0, Lcn/com/zte/nlt/smartdailer/IPDialNumberInput$2;->this$0:Lcn/com/zte/nlt/smartdailer/IPDialNumberInput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 100
    iget-object v0, p0, Lcn/com/zte/nlt/smartdailer/IPDialNumberInput$2;->this$0:Lcn/com/zte/nlt/smartdailer/IPDialNumberInput;

    invoke-virtual {v0}, Lcn/com/zte/nlt/smartdailer/IPDialNumberInput;->finish()V

    .line 101
    return-void
.end method
