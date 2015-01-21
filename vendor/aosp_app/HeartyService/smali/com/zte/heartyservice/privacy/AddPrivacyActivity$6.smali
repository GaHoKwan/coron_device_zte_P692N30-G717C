.class Lcom/zte/heartyservice/privacy/AddPrivacyActivity$6;
.super Ljava/lang/Object;
.source "AddPrivacyActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->addPrivacySms(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/privacy/AddPrivacyActivity;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/privacy/AddPrivacyActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 219
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/AddPrivacyActivity$6;->this$0:Lcom/zte/heartyservice/privacy/AddPrivacyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 221
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/AddPrivacyActivity$6;->this$0:Lcom/zte/heartyservice/privacy/AddPrivacyActivity;

    invoke-virtual {v0}, Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->finish()V

    .line 222
    return-void
.end method
