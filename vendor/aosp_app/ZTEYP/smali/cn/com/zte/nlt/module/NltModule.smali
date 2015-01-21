.class public abstract Lcn/com/zte/nlt/module/NltModule;
.super Ljava/lang/Object;
.source "NltModule.java"


# instance fields
.field protected context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcn/com/zte/nlt/module/NltModule;->context:Landroid/content/Context;

    .line 19
    return-void
.end method


# virtual methods
.method public filterIpPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "number"

    .prologue
    .line 42
    iget-object v0, p0, Lcn/com/zte/nlt/module/NltModule;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcn/com/zte/nlt/utils/PhoneNumberUtils;->filterIpPrefix(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNumberPrefix(Ljava/lang/String;)Lcn/com/zte/nlt/module/NumberPrefixInfo;
    .locals 1
    .parameter "number"

    .prologue
    .line 52
    invoke-static {p1}, Lcn/com/zte/nlt/utils/PhoneNumberUtils;->getNumberPrefix(Ljava/lang/String;)Lcn/com/zte/nlt/module/NumberPrefixInfo;

    move-result-object v0

    return-object v0
.end method

.method public abstract init()V
.end method

.method public abstract queryNumberInfo(Ljava/lang/String;)Landroid/database/Cursor;
.end method
