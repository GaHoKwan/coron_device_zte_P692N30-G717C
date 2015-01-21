.class Lcom/zte/heartyservice/privacy/ContactsSelectActivity$3;
.super Ljava/lang/Object;
.source "ContactsSelectActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->setSelectActionBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/privacy/ContactsSelectActivity;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/privacy/ContactsSelectActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity$3;->this$0:Lcom/zte/heartyservice/privacy/ContactsSelectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity$3;->this$0:Lcom/zte/heartyservice/privacy/ContactsSelectActivity;

    invoke-virtual {v0}, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->onBackPressed()V

    .line 150
    return-void
.end method
