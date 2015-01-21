.class Lcn/com/zte/nlt/smartdailer/IPDialPreference$1;
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


# direct methods
.method constructor <init>(Lcn/com/zte/nlt/smartdailer/IPDialPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 186
    iput-object p1, p0, Lcn/com/zte/nlt/smartdailer/IPDialPreference$1;->this$0:Lcn/com/zte/nlt/smartdailer/IPDialPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 188
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 189
    return-void
.end method
