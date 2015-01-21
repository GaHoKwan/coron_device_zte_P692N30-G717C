.class Lcom/zte/heartyservice/interceptad/AdDetailActivity$PackageDeleteObserver;
.super Landroid/content/pm/IPackageDeleteObserver$Stub;
.source "AdDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/interceptad/AdDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageDeleteObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/interceptad/AdDetailActivity;


# direct methods
.method private constructor <init>(Lcom/zte/heartyservice/interceptad/AdDetailActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/zte/heartyservice/interceptad/AdDetailActivity$PackageDeleteObserver;->this$0:Lcom/zte/heartyservice/interceptad/AdDetailActivity;

    invoke-direct {p0}, Landroid/content/pm/IPackageDeleteObserver$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/heartyservice/interceptad/AdDetailActivity;Lcom/zte/heartyservice/interceptad/AdDetailActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/interceptad/AdDetailActivity$PackageDeleteObserver;-><init>(Lcom/zte/heartyservice/interceptad/AdDetailActivity;)V

    return-void
.end method


# virtual methods
.method public packageDeleted(Ljava/lang/String;I)V
    .locals 1
    .parameter "packageName"
    .parameter "arg1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Lcom/zte/heartyservice/interceptad/AdDetailActivity$PackageDeleteObserver;->this$0:Lcom/zte/heartyservice/interceptad/AdDetailActivity;

    invoke-virtual {v0}, Lcom/zte/heartyservice/interceptad/AdDetailActivity;->finish()V

    .line 60
    return-void
.end method
