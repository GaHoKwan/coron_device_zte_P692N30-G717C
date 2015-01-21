.class public Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs$ContactItem;
.super Ljava/lang/Object;
.source "DisguiseCommunicationFragmentTabs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ContactItem"
.end annotation


# instance fields
.field name:Ljava/lang/String;

.field number:Ljava/lang/String;

.field final synthetic this$0:Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "number"
    .parameter "name"

    .prologue
    const/4 v0, 0x0

    .line 215
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs$ContactItem;->this$0:Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    iput-object v0, p0, Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs$ContactItem;->number:Ljava/lang/String;

    .line 213
    iput-object v0, p0, Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs$ContactItem;->name:Ljava/lang/String;

    .line 216
    iput-object p2, p0, Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs$ContactItem;->number:Ljava/lang/String;

    .line 217
    iput-object p3, p0, Lcom/zte/heartyservice/privacy/DisguiseCommunicationFragmentTabs$ContactItem;->name:Ljava/lang/String;

    .line 218
    return-void
.end method
