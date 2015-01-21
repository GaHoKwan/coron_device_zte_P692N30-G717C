.class final Lcom/android/mms/LogTag$1;
.super Ljava/lang/Object;
.source "LogTag.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/LogTag;->dumpInternalTables(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/mms/LogTag$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 111
    invoke-static {}, Lcom/android/mms/data/RecipientIdCache;->canonicalTableDump()V

    .line 112
    invoke-static {}, Lcom/android/mms/data/RecipientIdCache;->dump()V

    .line 113
    iget-object v0, p0, Lcom/android/mms/LogTag$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mms/data/Conversation;->dumpThreadsTable(Landroid/content/Context;)V

    .line 114
    invoke-static {}, Lcom/android/mms/data/Conversation;->dump()V

    .line 115
    iget-object v0, p0, Lcom/android/mms/LogTag$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mms/data/Conversation;->dumpSmsTable(Landroid/content/Context;)V

    .line 116
    invoke-static {}, Lcom/android/mms/data/Contact;->dump()V

    .line 117
    return-void
.end method
