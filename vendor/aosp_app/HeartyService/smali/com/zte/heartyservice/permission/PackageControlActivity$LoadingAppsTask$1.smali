.class Lcom/zte/heartyservice/permission/PackageControlActivity$LoadingAppsTask$1;
.super Ljava/lang/Object;
.source "PackageControlActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/permission/PackageControlActivity$LoadingAppsTask;->getAppGroups(Ljava/lang/String;)Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroup;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zte/heartyservice/permission/PackageControlActivity$LoadingAppsTask;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/permission/PackageControlActivity$LoadingAppsTask;)V
    .locals 0
    .parameter

    .prologue
    .line 476
    iput-object p1, p0, Lcom/zte/heartyservice/permission/PackageControlActivity$LoadingAppsTask$1;->this$1:Lcom/zte/heartyservice/permission/PackageControlActivity$LoadingAppsTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroup;Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroup;)I
    .locals 3
    .parameter "a"
    .parameter "b"

    .prologue
    .line 479
    invoke-virtual {p1}, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroup;->getAppName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroup;->getAppName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 480
    :cond_0
    const/4 v0, 0x0

    .line 482
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    invoke-virtual {p1}, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroup;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroup;->getAppName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 476
    check-cast p1, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroup;

    .end local p1
    check-cast p2, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroup;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/zte/heartyservice/permission/PackageControlActivity$LoadingAppsTask$1;->compare(Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroup;Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroup;)I

    move-result v0

    return v0
.end method
