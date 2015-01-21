.class public Lcn/com/zte/nlt/module/zte/ZteNltModule;
.super Lcn/com/zte/nlt/module/NltModule;
.source "ZteNltModule.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcn/com/zte/nlt/module/NltModule;-><init>(Landroid/content/Context;)V

    .line 22
    return-void
.end method


# virtual methods
.method public init()V
    .locals 1

    .prologue
    .line 56
    const-string v0, "ZteNltModule.init()"

    invoke-static {v0}, Lcn/com/zte/yp/utils/Logging;->i(Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcn/com/zte/nlt/module/zte/ZteNltModule;->context:Landroid/content/Context;

    invoke-static {v0}, Lcn/com/zte/nlt/module/zte/ZteNltDbaFactory;->getInstance(Landroid/content/Context;)Lcn/com/zte/nlt/module/zte/ZteNltDbaFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcn/com/zte/nlt/module/zte/ZteNltDbaFactory;->getDbaInstance()Lcn/com/zte/nlt/module/zte/ZteNltDbAdapter;

    .line 59
    return-void
.end method

.method public queryNumberInfo(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .parameter "number"

    .prologue
    const/4 v3, 0x0

    .line 31
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "queryNumberInfo. number="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcn/com/zte/yp/utils/Logging;->i(Ljava/lang/String;)V

    .line 32
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 47
    :cond_0
    :goto_0
    return-object v3

    .line 36
    :cond_1
    invoke-static {p1}, Lcn/com/zte/nlt/utils/PhoneNumberUtils;->replaceIpPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 38
    .local v1, noneIpNumber:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcn/com/zte/nlt/module/zte/ZteNltModule;->filterIpPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 40
    invoke-virtual {p0, v1}, Lcn/com/zte/nlt/module/zte/ZteNltModule;->getNumberPrefix(Ljava/lang/String;)Lcn/com/zte/nlt/module/NumberPrefixInfo;

    move-result-object v2

    .line 41
    .local v2, npInfo:Lcn/com/zte/nlt/module/NumberPrefixInfo;
    invoke-virtual {v2}, Lcn/com/zte/nlt/module/NumberPrefixInfo;->getType()Lcn/com/zte/nlt/NltConst$NumberType;

    move-result-object v4

    sget-object v5, Lcn/com/zte/nlt/NltConst$NumberType;->OTHER:Lcn/com/zte/nlt/NltConst$NumberType;

    if-ne v4, v5, :cond_2

    .line 42
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "can not find prefix.return null. number="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcn/com/zte/yp/utils/Logging;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 46
    :cond_2
    iget-object v3, p0, Lcn/com/zte/nlt/module/zte/ZteNltModule;->context:Landroid/content/Context;

    invoke-static {v3}, Lcn/com/zte/nlt/module/zte/ZteNltDbaFactory;->getInstance(Landroid/content/Context;)Lcn/com/zte/nlt/module/zte/ZteNltDbaFactory;

    move-result-object v3

    invoke-virtual {v3}, Lcn/com/zte/nlt/module/zte/ZteNltDbaFactory;->getDbaInstance()Lcn/com/zte/nlt/module/zte/ZteNltDbAdapter;

    move-result-object v0

    .line 47
    .local v0, dba:Lcn/com/zte/nlt/module/zte/ZteNltDbAdapter;
    invoke-virtual {v0, v2}, Lcn/com/zte/nlt/module/zte/ZteNltDbAdapter;->queryNumberRegionInfo(Lcn/com/zte/nlt/module/NumberPrefixInfo;)Landroid/database/Cursor;

    move-result-object v3

    goto :goto_0
.end method
