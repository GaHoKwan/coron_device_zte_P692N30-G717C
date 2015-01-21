.class Lcom/zte/heartyservice/main/HeartyServiceApp$7;
.super Ljava/lang/Object;
.source "HeartyServiceApp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/main/HeartyServiceApp;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/main/HeartyServiceApp;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/main/HeartyServiceApp;)V
    .locals 0
    .parameter

    .prologue
    .line 2315
    iput-object p1, p0, Lcom/zte/heartyservice/main/HeartyServiceApp$7;->this$0:Lcom/zte/heartyservice/main/HeartyServiceApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2318
    iget-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceApp$7;->this$0:Lcom/zte/heartyservice/main/HeartyServiceApp;

    invoke-virtual {v0}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/heartyservice/net/NetManagermentUtils;->getInstance(Landroid/content/Context;)Lcom/zte/heartyservice/net/NetManagermentUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/heartyservice/net/NetManagermentUtils;->applyRootIptablesRules()V

    .line 2319
    return-void
.end method
