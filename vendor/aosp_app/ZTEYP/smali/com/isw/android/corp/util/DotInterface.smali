.class public Lcom/isw/android/corp/util/DotInterface;
.super Ljava/lang/Object;
.source "DotInterface.java"


# static fields
.field private static DotinputStream:Ljava/io/InputStream; = null

.field private static final TAG:Ljava/lang/String; = "DotInterface"

.field private static bWorking:Z

.field private static ccIconStream:Ljava/io/FileInputStream;

.field private static companyItemBean:Lcom/isw/android/corp/bean/CompanyItemBean;

.field private static dotInfoBuff:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/isw/android/corp/bean/DotInfoBean;",
            ">;"
        }
    .end annotation
.end field

.field private static killHisory:Ljava/lang/String;

.field private static localphoneString:[Ljava/lang/String;

.field private static mDotAnim:Z


# instance fields
.field private CompanyIconinputStream:Ljava/io/InputStream;

.field private context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/isw/android/corp/util/DotInterface;->localphoneString:[Ljava/lang/String;

    .line 56
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/isw/android/corp/util/DotInterface;->dotInfoBuff:Ljava/util/Vector;

    .line 58
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isw/android/corp/util/DotInterface;->bWorking:Z

    .line 59
    const-string v0, ""

    sput-object v0, Lcom/isw/android/corp/util/DotInterface;->killHisory:Ljava/lang/String;

    .line 60
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isw/android/corp/util/DotInterface;->mDotAnim:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "phoneNumber"

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/isw/android/corp/util/DotInterface;->context:Landroid/content/Context;

    .line 72
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 73
    invoke-static {p2}, Lcom/isw/android/corp/util/WinksTools;->formatPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 74
    invoke-static {p2}, Lcom/isw/android/corp/util/WinksTools;->isNumeric(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 75
    const-string v3, "112"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 76
    :cond_0
    new-instance v3, Lcom/isw/android/corp/bean/CompanyItemBean;

    invoke-direct {v3}, Lcom/isw/android/corp/bean/CompanyItemBean;-><init>()V

    sput-object v3, Lcom/isw/android/corp/util/DotInterface;->companyItemBean:Lcom/isw/android/corp/bean/CompanyItemBean;

    .line 112
    :cond_1
    :goto_0
    return-void

    .line 79
    :cond_2
    sget-object v3, Lcom/isw/android/corp/util/DotInterface;->localphoneString:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 80
    sget-object v3, Lcom/isw/android/corp/util/DotInterface;->localphoneString:[Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    .line 90
    :goto_1
    sget-object v3, Lcom/isw/android/corp/util/DotInterface;->localphoneString:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/isw/android/corp/message/MiniCompanyData;->getCompanyRawItem(Ljava/lang/String;Z)Lcom/isw/android/corp/bean/CompanyItemBean;

    move-result-object v0

    .line 91
    .local v0, companyItemBean:Lcom/isw/android/corp/bean/CompanyItemBean;
    sput-object v0, Lcom/isw/android/corp/util/DotInterface;->companyItemBean:Lcom/isw/android/corp/bean/CompanyItemBean;

    .line 92
    sget-object v3, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    iget-boolean v3, v3, Lcom/isw/android/corp/bean/ServiceConfigBean;->embedShow:Z

    if-eqz v3, :cond_5

    .line 93
    if-eqz v0, :cond_1

    .line 94
    iget-object v3, v0, Lcom/isw/android/corp/bean/CompanyItemBean;->name:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 95
    sput-object p2, Lcom/isw/android/corp/util/DotInterface;->killHisory:Ljava/lang/String;

    .line 96
    invoke-static {}, Lcom/isw/android/corp/telephony/CallUtil;->killRival()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 105
    .end local v0           #companyItemBean:Lcom/isw/android/corp/bean/CompanyItemBean;
    :catch_0
    move-exception v2

    .line 106
    .local v2, ex:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 107
    const-string v3, "DotInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ex: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/isw/android/corp/util/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 81
    .end local v2           #ex:Ljava/lang/Exception;
    :cond_3
    :try_start_1
    sget-object v3, Lcom/isw/android/corp/util/DotInterface;->localphoneString:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 82
    sget-object v3, Lcom/isw/android/corp/util/DotInterface;->killHisory:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 83
    invoke-static {}, Lcom/isw/android/corp/telephony/CallUtil;->killRival()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 108
    :catch_1
    move-exception v1

    .line 109
    .local v1, err:Ljava/lang/Error;
    invoke-virtual {v1}, Ljava/lang/Error;->printStackTrace()V

    .line 110
    const-string v3, "DotInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "err: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Error;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/isw/android/corp/util/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 87
    .end local v1           #err:Ljava/lang/Error;
    :cond_4
    :try_start_2
    sget-object v3, Lcom/isw/android/corp/util/DotInterface;->localphoneString:[Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    goto :goto_1

    .line 100
    .restart local v0       #companyItemBean:Lcom/isw/android/corp/bean/CompanyItemBean;
    :cond_5
    new-instance v3, Lcom/isw/android/corp/bean/CompanyItemBean;

    invoke-direct {v3}, Lcom/isw/android/corp/bean/CompanyItemBean;-><init>()V

    sput-object v3, Lcom/isw/android/corp/util/DotInterface;->companyItemBean:Lcom/isw/android/corp/bean/CompanyItemBean;

    goto/16 :goto_0

    .line 103
    .end local v0           #companyItemBean:Lcom/isw/android/corp/bean/CompanyItemBean;
    :cond_6
    new-instance v3, Lcom/isw/android/corp/bean/CompanyItemBean;

    invoke-direct {v3}, Lcom/isw/android/corp/bean/CompanyItemBean;-><init>()V

    sput-object v3, Lcom/isw/android/corp/util/DotInterface;->companyItemBean:Lcom/isw/android/corp/bean/CompanyItemBean;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 6
    .parameter "context"
    .parameter "phoneNumber"
    .parameter "isIncomingCall"

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-object p1, p0, Lcom/isw/android/corp/util/DotInterface;->context:Landroid/content/Context;

    .line 125
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 126
    invoke-static {p2}, Lcom/isw/android/corp/util/WinksTools;->formatPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 127
    invoke-static {p2}, Lcom/isw/android/corp/util/WinksTools;->isNumeric(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 128
    const-string v3, "112"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 129
    :cond_0
    new-instance v3, Lcom/isw/android/corp/bean/CompanyItemBean;

    invoke-direct {v3}, Lcom/isw/android/corp/bean/CompanyItemBean;-><init>()V

    sput-object v3, Lcom/isw/android/corp/util/DotInterface;->companyItemBean:Lcom/isw/android/corp/bean/CompanyItemBean;

    .line 187
    :cond_1
    :goto_0
    return-void

    .line 132
    :cond_2
    sget-object v3, Lcom/isw/android/corp/util/DotInterface;->localphoneString:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 133
    sget-object v3, Lcom/isw/android/corp/util/DotInterface;->localphoneString:[Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    .line 134
    sget-object v3, Lcom/isw/android/corp/util/DotInterface;->localphoneString:[Ljava/lang/String;

    const/4 v4, 0x1

    invoke-static {p3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 147
    :goto_1
    sget-object v3, Lcom/isw/android/corp/util/DotInterface;->localphoneString:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/isw/android/corp/message/MiniCompanyData;->getCompanyRawItem(Ljava/lang/String;Z)Lcom/isw/android/corp/bean/CompanyItemBean;

    move-result-object v0

    .line 148
    .local v0, companyItemBean:Lcom/isw/android/corp/bean/CompanyItemBean;
    iget-boolean v3, v0, Lcom/isw/android/corp/bean/CompanyItemBean;->bShowCom:Z

    if-nez v3, :cond_5

    .line 149
    new-instance v3, Lcom/isw/android/corp/bean/CompanyItemBean;

    invoke-direct {v3}, Lcom/isw/android/corp/bean/CompanyItemBean;-><init>()V

    sput-object v3, Lcom/isw/android/corp/util/DotInterface;->companyItemBean:Lcom/isw/android/corp/bean/CompanyItemBean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 180
    .end local v0           #companyItemBean:Lcom/isw/android/corp/bean/CompanyItemBean;
    :catch_0
    move-exception v2

    .line 181
    .local v2, ex:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 182
    const-string v3, "DotInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ex: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/isw/android/corp/util/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 135
    .end local v2           #ex:Ljava/lang/Exception;
    :cond_3
    :try_start_1
    sget-object v3, Lcom/isw/android/corp/util/DotInterface;->localphoneString:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 136
    invoke-static {p3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    .line 137
    sget-object v4, Lcom/isw/android/corp/util/DotInterface;->localphoneString:[Ljava/lang/String;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 138
    sget-object v3, Lcom/isw/android/corp/util/DotInterface;->killHisory:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 139
    invoke-static {}, Lcom/isw/android/corp/telephony/CallUtil;->killRival()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 183
    :catch_1
    move-exception v1

    .line 184
    .local v1, err:Ljava/lang/Error;
    invoke-virtual {v1}, Ljava/lang/Error;->printStackTrace()V

    .line 185
    const-string v3, "DotInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "err: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Error;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/isw/android/corp/util/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 143
    .end local v1           #err:Ljava/lang/Error;
    :cond_4
    :try_start_2
    sget-object v3, Lcom/isw/android/corp/util/DotInterface;->localphoneString:[Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    .line 144
    sget-object v3, Lcom/isw/android/corp/util/DotInterface;->localphoneString:[Ljava/lang/String;

    const/4 v4, 0x1

    invoke-static {p3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    goto/16 :goto_1

    .line 152
    .restart local v0       #companyItemBean:Lcom/isw/android/corp/bean/CompanyItemBean;
    :cond_5
    const-string v3, "DotInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "companyItemBean.sshow:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/isw/android/corp/bean/CompanyItemBean;->sshow:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 153
    const-string v5, "; isIncomingCall:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 152
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v3, v0, Lcom/isw/android/corp/bean/CompanyItemBean;->sshow:Ljava/lang/String;

    const-string v4, "i"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 155
    if-eqz p3, :cond_6

    .line 156
    const-string v3, "DotInterface"

    const-string v4, "Not show when callin."

    invoke-static {v3, v4}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    new-instance v3, Lcom/isw/android/corp/bean/CompanyItemBean;

    invoke-direct {v3}, Lcom/isw/android/corp/bean/CompanyItemBean;-><init>()V

    sput-object v3, Lcom/isw/android/corp/util/DotInterface;->companyItemBean:Lcom/isw/android/corp/bean/CompanyItemBean;

    goto/16 :goto_0

    .line 160
    :cond_6
    iget-object v3, v0, Lcom/isw/android/corp/bean/CompanyItemBean;->sshow:Ljava/lang/String;

    const-string v4, "o"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 161
    if-nez p3, :cond_7

    .line 162
    const-string v3, "DotInterface"

    const-string v4, "Not show when callout."

    invoke-static {v3, v4}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    new-instance v3, Lcom/isw/android/corp/bean/CompanyItemBean;

    invoke-direct {v3}, Lcom/isw/android/corp/bean/CompanyItemBean;-><init>()V

    sput-object v3, Lcom/isw/android/corp/util/DotInterface;->companyItemBean:Lcom/isw/android/corp/bean/CompanyItemBean;

    goto/16 :goto_0

    .line 166
    :cond_7
    sput-object v0, Lcom/isw/android/corp/util/DotInterface;->companyItemBean:Lcom/isw/android/corp/bean/CompanyItemBean;

    .line 167
    sget-object v3, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    iget-boolean v3, v3, Lcom/isw/android/corp/bean/ServiceConfigBean;->embedShow:Z

    if-eqz v3, :cond_8

    .line 168
    if-eqz v0, :cond_1

    .line 169
    iget-object v3, v0, Lcom/isw/android/corp/bean/CompanyItemBean;->name:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 170
    sput-object p2, Lcom/isw/android/corp/util/DotInterface;->killHisory:Ljava/lang/String;

    .line 171
    invoke-static {}, Lcom/isw/android/corp/telephony/CallUtil;->killRival()V

    goto/16 :goto_0

    .line 175
    :cond_8
    new-instance v3, Lcom/isw/android/corp/bean/CompanyItemBean;

    invoke-direct {v3}, Lcom/isw/android/corp/bean/CompanyItemBean;-><init>()V

    sput-object v3, Lcom/isw/android/corp/util/DotInterface;->companyItemBean:Lcom/isw/android/corp/bean/CompanyItemBean;

    goto/16 :goto_0

    .line 178
    .end local v0           #companyItemBean:Lcom/isw/android/corp/bean/CompanyItemBean;
    :cond_9
    new-instance v3, Lcom/isw/android/corp/bean/CompanyItemBean;

    invoke-direct {v3}, Lcom/isw/android/corp/bean/CompanyItemBean;-><init>()V

    sput-object v3, Lcom/isw/android/corp/util/DotInterface;->companyItemBean:Lcom/isw/android/corp/bean/CompanyItemBean;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0
.end method

.method public static StartWebView(Landroid/content/Context;Ljava/lang/String;Lcom/isw/android/corp/bean/DotInfoBean;)V
    .locals 6
    .parameter "context"
    .parameter "number"
    .parameter "dotInfoBean"

    .prologue
    .line 486
    invoke-static {p0}, Lcom/isw/android/corp/util/DotInterface;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    .line 488
    .local v0, bNetEnable:Z
    if-eqz v0, :cond_2

    .line 489
    if-eqz p2, :cond_0

    .line 490
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 491
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "number"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 492
    const-string v3, "DotInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "number:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    const-string v3, "com.android.iswdotexp"

    invoke-static {p0, v3}, Lcom/isw/android/corp/util/DotInterface;->packageIsExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 495
    const-string v3, "com.isw.third.app.DotWebShow"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 496
    const-class v3, Lcom/isw/third/app/DotWebActivity;

    invoke-virtual {v2, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 500
    :goto_0
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 508
    .end local v2           #intent:Landroid/content/Intent;
    :cond_0
    :goto_1
    return-void

    .line 498
    .restart local v2       #intent:Landroid/content/Intent;
    :cond_1
    const-string v3, "com.isw.third.app.DotWebShowExp"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 505
    .end local v2           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 506
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 503
    .end local v1           #e:Ljava/lang/Exception;
    :cond_2
    :try_start_1
    const-string v3, "\u7f51\u7edc\u8fde\u63a5\u5931\u8d25\uff01"

    const/4 v4, 0x1

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static StartWebView(Landroid/content/Context;Ljava/lang/String;Lcom/isw/android/corp/bean/DotInfoBean;I)V
    .locals 8
    .parameter "context"
    .parameter "number"
    .parameter "dotInfoBean"
    .parameter "callType"

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 512
    invoke-static {p0}, Lcom/isw/android/corp/util/DotInterface;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    .line 513
    .local v0, bNetEnable:Z
    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 515
    .local v1, callFlag:Ljava/lang/String;
    if-ne v5, p3, :cond_2

    .line 516
    const/4 v4, 0x4

    :try_start_0
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 522
    :cond_0
    :goto_0
    if-eqz v0, :cond_5

    .line 523
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 524
    .local v3, intent:Landroid/content/Intent;
    const-string v4, "number"

    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 525
    const-string v4, "callFlag"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 526
    const-string v4, "DotInterface"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "number:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    const-string v4, "DotInterface"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "callFlag:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    if-nez p2, :cond_1

    .line 529
    const-string v4, "viewType"

    const-string v5, "1"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 531
    :cond_1
    const-string v4, "com.android.iswdotexp"

    invoke-static {p0, v4}, Lcom/isw/android/corp/util/DotInterface;->packageIsExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 532
    const-string v4, "com.isw.third.app.DotWebShow"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 533
    const-class v4, Lcom/isw/third/app/DotWebActivity;

    invoke-virtual {v3, p0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 537
    :goto_1
    invoke-virtual {p0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 544
    .end local v3           #intent:Landroid/content/Intent;
    :goto_2
    return-void

    .line 517
    :cond_2
    if-ne v6, p3, :cond_3

    .line 518
    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 519
    goto :goto_0

    :cond_3
    if-ne v7, p3, :cond_0

    .line 520
    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 535
    .restart local v3       #intent:Landroid/content/Intent;
    :cond_4
    const-string v4, "com.isw.third.app.DotWebShowExp"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 541
    .end local v3           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v2

    .line 542
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 539
    .end local v2           #e:Ljava/lang/Exception;
    :cond_5
    :try_start_1
    const-string v4, "\u7f51\u7edc\u8fde\u63a5\u5931\u8d25\uff01"

    const/4 v5, 0x1

    invoke-static {p0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private static getAlphaAnim()Landroid/view/animation/Animation;
    .locals 10

    .prologue
    const-wide/16 v8, 0x7d0

    const/4 v7, 0x1

    const/4 v6, -0x1

    const v5, 0x3ff33333

    const v4, 0x3e4ccccd

    .line 753
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 754
    .local v0, alpha:Landroid/view/animation/AnimationSet;
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v5, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 755
    .local v1, alpha1:Landroid/view/animation/Animation;
    invoke-virtual {v1, v7}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 756
    invoke-virtual {v1, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 757
    invoke-virtual {v1, v6}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 759
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v2, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 760
    .local v2, alpha2:Landroid/view/animation/Animation;
    invoke-virtual {v2, v7}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 761
    invoke-virtual {v2, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 762
    invoke-virtual {v2, v6}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 764
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 765
    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 766
    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 767
    return-object v0
.end method

.method public static getCDUP()Z
    .locals 2

    .prologue
    .line 598
    const-string v0, "cdup"

    const-string v1, "false"

    invoke-static {v0, v1}, Lcom/isw/android/corp/util/LocalConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getCompanyByNumber(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .parameter "cr"
    .parameter "keyWords"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/isw/android/corp/bean/CompanyItemBean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 392
    const-string v1, "DotInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Begin search company data by "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    invoke-static {p0, p1}, Lcom/isw/android/corp/util/DotInfoClient;->queryCompanyByNumber(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 394
    .local v0, companyList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/isw/android/corp/bean/CompanyItemBean;>;"
    const-string v1, "DotInterface"

    const-string v2, "End search company data."

    invoke-static {v1, v2}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    return-object v0
.end method

.method public static getCompanyIconInputStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 13
    .parameter "iconId"

    .prologue
    .line 286
    const/4 v7, 0x0

    .line 287
    .local v7, iconStream:Ljava/io/FileInputStream;
    const/4 v1, 0x0

    .line 288
    .local v1, companyIconStream:Ljava/io/InputStream;
    const/4 v0, 0x0

    .line 290
    .local v0, bytes:[B
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 291
    invoke-static {p0}, Lcom/isw/android/corp/message/MiniCompanyData;->getCompanyIconFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 292
    .local v6, iconFile:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 293
    const-string v9, "DotInterface"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "iconId: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ";iconFile:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    .end local v7           #iconStream:Ljava/io/FileInputStream;
    .local v8, iconStream:Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {v8}, Lcom/isw/android/corp/util/WinksTools;->readInputStream(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 296
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    const/4 v9, 0x2

    if-lt v5, v9, :cond_2

    .line 299
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .end local v1           #companyIconStream:Ljava/io/InputStream;
    .local v2, companyIconStream:Ljava/io/InputStream;
    move-object v1, v2

    .end local v2           #companyIconStream:Ljava/io/InputStream;
    .restart local v1       #companyIconStream:Ljava/io/InputStream;
    move-object v7, v8

    .line 306
    .end local v5           #i:I
    .end local v6           #iconFile:Ljava/lang/String;
    .end local v8           #iconStream:Ljava/io/FileInputStream;
    .restart local v7       #iconStream:Ljava/io/FileInputStream;
    :cond_0
    if-eqz v7, :cond_1

    .line 307
    :try_start_2
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 314
    :cond_1
    :goto_1
    return-object v1

    .line 297
    .end local v7           #iconStream:Ljava/io/FileInputStream;
    .restart local v5       #i:I
    .restart local v6       #iconFile:Ljava/lang/String;
    .restart local v8       #iconStream:Ljava/io/FileInputStream;
    :cond_2
    :try_start_3
    aget-byte v9, v0, v5

    xor-int/lit8 v9, v9, 0x12

    int-to-byte v9, v9

    aput-byte v9, v0, v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 296
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 302
    .end local v5           #i:I
    .end local v6           #iconFile:Ljava/lang/String;
    .end local v8           #iconStream:Ljava/io/FileInputStream;
    .restart local v7       #iconStream:Ljava/io/FileInputStream;
    :catch_0
    move-exception v3

    .line 303
    .local v3, e:Ljava/lang/Exception;
    :goto_2
    :try_start_4
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 306
    if-eqz v7, :cond_1

    .line 307
    :try_start_5
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 309
    :catch_1
    move-exception v4

    .line 310
    .local v4, ex:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 311
    const-string v9, "DotInterface"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "ex: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 304
    .end local v3           #e:Ljava/lang/Exception;
    .end local v4           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    .line 306
    :goto_3
    if-eqz v7, :cond_3

    .line 307
    :try_start_6
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 313
    :cond_3
    :goto_4
    throw v9

    .line 309
    :catch_2
    move-exception v4

    .line 310
    .restart local v4       #ex:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 311
    const-string v10, "DotInterface"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "ex: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 309
    .end local v4           #ex:Ljava/lang/Exception;
    :catch_3
    move-exception v4

    .line 310
    .restart local v4       #ex:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 311
    const-string v9, "DotInterface"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "ex: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 304
    .end local v4           #ex:Ljava/lang/Exception;
    .end local v7           #iconStream:Ljava/io/FileInputStream;
    .restart local v6       #iconFile:Ljava/lang/String;
    .restart local v8       #iconStream:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v9

    move-object v7, v8

    .end local v8           #iconStream:Ljava/io/FileInputStream;
    .restart local v7       #iconStream:Ljava/io/FileInputStream;
    goto :goto_3

    .line 302
    .end local v7           #iconStream:Ljava/io/FileInputStream;
    .restart local v8       #iconStream:Ljava/io/FileInputStream;
    :catch_4
    move-exception v3

    move-object v7, v8

    .end local v8           #iconStream:Ljava/io/FileInputStream;
    .restart local v7       #iconStream:Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method public static getContactInfo(Landroid/content/ContentResolver;)Lcom/isw/android/corp/bean/ContactInfoBean;
    .locals 6
    .parameter "contentResolver"

    .prologue
    .line 565
    new-instance v0, Lcom/isw/android/corp/bean/ContactInfoBean;

    invoke-direct {v0}, Lcom/isw/android/corp/bean/ContactInfoBean;-><init>()V

    .line 567
    .local v0, bean:Lcom/isw/android/corp/bean/ContactInfoBean;
    :try_start_0
    invoke-static {p0}, Lcom/isw/android/corp/util/DotInfoClient;->queryContactInfo(Landroid/content/ContentResolver;)Lcom/isw/android/corp/bean/ContactInfoBean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 575
    :goto_0
    return-object v0

    .line 568
    :catch_0
    move-exception v2

    .line 569
    .local v2, ex:Ljava/lang/Exception;
    const-string v3, "DotInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ex: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 571
    .end local v2           #ex:Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 572
    .local v1, err:Ljava/lang/Error;
    const-string v3, "DotInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "err: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Error;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    invoke-virtual {v1}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_0
.end method

.method public static getDotInfoBean(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/isw/android/corp/bean/DotInfoBean;
    .locals 11
    .parameter "contentResolver"
    .parameter "phoneNumber"

    .prologue
    .line 322
    const-string v8, "zdws"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "dotNumber:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    const/4 v1, 0x0

    .line 325
    .local v1, bean:Lcom/isw/android/corp/bean/DotInfoBean;
    :try_start_0
    invoke-static {p1}, Lcom/isw/android/corp/util/WinksTools;->formatPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 326
    sget-object v8, Lcom/isw/android/corp/util/DotInterface;->dotInfoBuff:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v3

    .line 327
    .local v3, buffSize:I
    const-string v8, "DotInterface"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "buffSize: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    if-lt v7, v3, :cond_3

    .line 360
    invoke-static {p0, p1}, Lcom/isw/android/corp/util/DotInfoClient;->queryPhoneDotInfo(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/isw/android/corp/bean/DotInfoBean;

    move-result-object v1

    .line 361
    iget-object v8, v1, Lcom/isw/android/corp/bean/DotInfoBean;->dotimg:Ljava/lang/String;

    invoke-static {v8}, Lcom/isw/android/corp/util/WinksTools;->isEmpty(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 362
    iget-object v8, v1, Lcom/isw/android/corp/bean/DotInfoBean;->dotimg:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/isw/android/corp/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    .line 363
    .local v4, bytes:[B
    new-instance v8, Ljava/io/ByteArrayInputStream;

    invoke-direct {v8, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v8, v1, Lcom/isw/android/corp/bean/DotInfoBean;->dotis:Ljava/io/InputStream;

    .line 366
    .end local v4           #bytes:[B
    :cond_0
    iget-object v8, v1, Lcom/isw/android/corp/bean/DotInfoBean;->companyimg:Ljava/lang/String;

    invoke-static {v8}, Lcom/isw/android/corp/util/WinksTools;->isEmpty(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 367
    iget-object v8, v1, Lcom/isw/android/corp/bean/DotInfoBean;->companyimg:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/isw/android/corp/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    .line 368
    .restart local v4       #bytes:[B
    new-instance v8, Ljava/io/ByteArrayInputStream;

    invoke-direct {v8, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v8, v1, Lcom/isw/android/corp/bean/DotInfoBean;->companyis:Ljava/io/InputStream;

    .line 371
    .end local v4           #bytes:[B
    :cond_1
    iget-object v8, v1, Lcom/isw/android/corp/bean/DotInfoBean;->name:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 372
    iget-object v8, v1, Lcom/isw/android/corp/bean/DotInfoBean;->companyimg:Ljava/lang/String;

    invoke-static {v8}, Lcom/isw/android/corp/util/WinksTools;->isEmpty(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 373
    sget-object v8, Lcom/isw/android/corp/util/DotInterface;->dotInfoBuff:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v8

    const/16 v9, 0x14

    if-gt v8, v9, :cond_2

    .line 374
    const-string v8, "DotInterface"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Add dotinfo for "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    sget-object v8, Lcom/isw/android/corp/util/DotInterface;->dotInfoBuff:Ljava/util/Vector;

    invoke-virtual {v8, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .end local v3           #buffSize:I
    .end local v7           #i:I
    :cond_2
    :goto_1
    move-object v2, v1

    .line 385
    .end local v1           #bean:Lcom/isw/android/corp/bean/DotInfoBean;
    .local v2, bean:Lcom/isw/android/corp/bean/DotInfoBean;
    :goto_2
    return-object v2

    .line 329
    .end local v2           #bean:Lcom/isw/android/corp/bean/DotInfoBean;
    .restart local v1       #bean:Lcom/isw/android/corp/bean/DotInfoBean;
    .restart local v3       #buffSize:I
    .restart local v7       #i:I
    :cond_3
    sget-object v8, Lcom/isw/android/corp/util/DotInterface;->dotInfoBuff:Ljava/util/Vector;

    invoke-virtual {v8, v7}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/isw/android/corp/bean/DotInfoBean;

    iget-object v8, v8, Lcom/isw/android/corp/bean/DotInfoBean;->phone:Ljava/lang/String;

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 330
    sget-object v8, Lcom/isw/android/corp/util/DotInterface;->dotInfoBuff:Ljava/util/Vector;

    invoke-virtual {v8, v7}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Lcom/isw/android/corp/bean/DotInfoBean;

    move-object v1, v0

    .line 332
    iget-object v8, v1, Lcom/isw/android/corp/bean/DotInfoBean;->dotis:Ljava/io/InputStream;

    if-eqz v8, :cond_4

    .line 333
    iget-object v8, v1, Lcom/isw/android/corp/bean/DotInfoBean;->dotis:Ljava/io/InputStream;

    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 334
    const/4 v8, 0x0

    iput-object v8, v1, Lcom/isw/android/corp/bean/DotInfoBean;->dotis:Ljava/io/InputStream;

    .line 336
    :cond_4
    const-string v8, ""

    iget-object v9, v1, Lcom/isw/android/corp/bean/DotInfoBean;->dotimg:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 337
    const-string v8, "DotInterface"

    const-string v9, "reinit dotis..."

    invoke-static {v8, v9}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    iget-object v8, v1, Lcom/isw/android/corp/bean/DotInfoBean;->dotimg:Ljava/lang/String;

    .line 339
    const/4 v9, 0x0

    .line 338
    invoke-static {v8, v9}, Lcom/isw/android/corp/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    .line 340
    .restart local v4       #bytes:[B
    new-instance v8, Ljava/io/ByteArrayInputStream;

    invoke-direct {v8, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v8, v1, Lcom/isw/android/corp/bean/DotInfoBean;->dotis:Ljava/io/InputStream;

    .line 344
    .end local v4           #bytes:[B
    :cond_5
    iget-object v8, v1, Lcom/isw/android/corp/bean/DotInfoBean;->companyis:Ljava/io/InputStream;

    if-eqz v8, :cond_6

    .line 345
    iget-object v8, v1, Lcom/isw/android/corp/bean/DotInfoBean;->companyis:Ljava/io/InputStream;

    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 346
    const/4 v8, 0x0

    iput-object v8, v1, Lcom/isw/android/corp/bean/DotInfoBean;->companyis:Ljava/io/InputStream;

    .line 348
    :cond_6
    const-string v8, ""

    iget-object v9, v1, Lcom/isw/android/corp/bean/DotInfoBean;->companyimg:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 349
    const-string v8, "DotInterface"

    const-string v9, "reinit companyis..."

    invoke-static {v8, v9}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    iget-object v8, v1, Lcom/isw/android/corp/bean/DotInfoBean;->companyimg:Ljava/lang/String;

    .line 352
    const/4 v9, 0x0

    .line 351
    invoke-static {v8, v9}, Lcom/isw/android/corp/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    .line 353
    .restart local v4       #bytes:[B
    new-instance v8, Ljava/io/ByteArrayInputStream;

    invoke-direct {v8, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v8, v1, Lcom/isw/android/corp/bean/DotInfoBean;->companyis:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .end local v4           #bytes:[B
    :cond_7
    move-object v2, v1

    .line 356
    .end local v1           #bean:Lcom/isw/android/corp/bean/DotInfoBean;
    .restart local v2       #bean:Lcom/isw/android/corp/bean/DotInfoBean;
    goto :goto_2

    .line 328
    .end local v2           #bean:Lcom/isw/android/corp/bean/DotInfoBean;
    .restart local v1       #bean:Lcom/isw/android/corp/bean/DotInfoBean;
    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 378
    .end local v3           #buffSize:I
    .end local v7           #i:I
    :catch_0
    move-exception v6

    .line 379
    .local v6, ex:Ljava/lang/Exception;
    const-string v8, "DotInterface"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "ex: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 381
    .end local v6           #ex:Ljava/lang/Exception;
    :catch_1
    move-exception v5

    .line 382
    .local v5, err:Ljava/lang/Error;
    const-string v8, "DotInterface"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "err: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Error;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    invoke-virtual {v5}, Ljava/lang/Error;->printStackTrace()V

    goto/16 :goto_1
.end method

.method public static getDotInputStream()Ljava/io/InputStream;
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 191
    :try_start_0
    sget-object v7, Lcom/isw/android/corp/util/DotInterface;->companyItemBean:Lcom/isw/android/corp/bean/CompanyItemBean;

    if-eqz v7, :cond_0

    .line 192
    sget-object v7, Lcom/isw/android/corp/util/DotInterface;->companyItemBean:Lcom/isw/android/corp/bean/CompanyItemBean;

    iget-object v1, v7, Lcom/isw/android/corp/bean/CompanyItemBean;->dotservice:Ljava/lang/String;

    .line 194
    .local v1, dotservice:Ljava/lang/String;
    invoke-static {v1}, Lcom/isw/android/corp/util/WinksTools;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 195
    sget-object v6, Lcom/isw/android/corp/util/DotInterface;->companyItemBean:Lcom/isw/android/corp/bean/CompanyItemBean;

    iget-object v5, v6, Lcom/isw/android/corp/bean/CompanyItemBean;->dotservice:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 197
    .local v5, iconFile:Ljava/lang/String;
    const/4 v0, 0x0

    .line 200
    .local v0, bytes:[B
    :try_start_1
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    sput-object v6, Lcom/isw/android/corp/util/DotInterface;->ccIconStream:Ljava/io/FileInputStream;

    .line 201
    sget-object v6, Lcom/isw/android/corp/util/DotInterface;->ccIconStream:Ljava/io/FileInputStream;

    invoke-static {v6}, Lcom/isw/android/corp/util/WinksTools;->readInputStream(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 202
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    const/4 v6, 0x2

    if-lt v4, v6, :cond_2

    .line 206
    sget-object v6, Lcom/isw/android/corp/util/DotInterface;->ccIconStream:Ljava/io/FileInputStream;

    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    .line 207
    const/4 v6, 0x0

    sput-object v6, Lcom/isw/android/corp/util/DotInterface;->ccIconStream:Ljava/io/FileInputStream;

    .line 208
    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-direct {v6, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    sput-object v6, Lcom/isw/android/corp/util/DotInterface;->DotinputStream:Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 215
    :try_start_2
    sget-object v6, Lcom/isw/android/corp/util/DotInterface;->ccIconStream:Ljava/io/FileInputStream;

    if-eqz v6, :cond_0

    .line 216
    sget-object v6, Lcom/isw/android/corp/util/DotInterface;->ccIconStream:Ljava/io/FileInputStream;

    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 230
    .end local v0           #bytes:[B
    .end local v4           #i:I
    .end local v5           #iconFile:Ljava/lang/String;
    :cond_0
    :goto_1
    sget-object v6, Lcom/isw/android/corp/util/DotInterface;->DotinputStream:Ljava/io/InputStream;

    :cond_1
    return-object v6

    .line 203
    .restart local v0       #bytes:[B
    .restart local v4       #i:I
    .restart local v5       #iconFile:Ljava/lang/String;
    :cond_2
    :try_start_3
    aget-byte v6, v0, v4

    xor-int/lit8 v6, v6, 0x12

    int-to-byte v6, v6

    aput-byte v6, v0, v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 202
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 210
    .end local v4           #i:I
    :catch_0
    move-exception v3

    .line 211
    .local v3, ex:Ljava/lang/Exception;
    :try_start_4
    const-string v6, "DotInterface"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "ex: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 215
    :try_start_5
    sget-object v6, Lcom/isw/android/corp/util/DotInterface;->ccIconStream:Ljava/io/FileInputStream;

    if-eqz v6, :cond_0

    .line 216
    sget-object v6, Lcom/isw/android/corp/util/DotInterface;->ccIconStream:Ljava/io/FileInputStream;

    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 218
    :catch_1
    move-exception v3

    .line 219
    :try_start_6
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_1

    .line 227
    .end local v0           #bytes:[B
    .end local v3           #ex:Ljava/lang/Exception;
    .end local v5           #iconFile:Ljava/lang/String;
    :catch_2
    move-exception v2

    .line 228
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 213
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v0       #bytes:[B
    .restart local v5       #iconFile:Ljava/lang/String;
    :catchall_0
    move-exception v6

    .line 215
    :try_start_7
    sget-object v7, Lcom/isw/android/corp/util/DotInterface;->ccIconStream:Ljava/io/FileInputStream;

    if-eqz v7, :cond_3

    .line 216
    sget-object v7, Lcom/isw/android/corp/util/DotInterface;->ccIconStream:Ljava/io/FileInputStream;

    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 221
    :cond_3
    :goto_2
    :try_start_8
    throw v6

    .line 218
    :catch_3
    move-exception v3

    .line 219
    .restart local v3       #ex:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 218
    .end local v3           #ex:Ljava/lang/Exception;
    .restart local v4       #i:I
    :catch_4
    move-exception v3

    .line 219
    .restart local v3       #ex:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_1
.end method

.method public static getNumLocInfo(Ljava/lang/String;)Lcom/isw/android/corp/bean/LocInfoBean;
    .locals 2
    .parameter "phone"

    .prologue
    .line 584
    const/4 v1, 0x0

    .line 586
    .local v1, locInfoBean:Lcom/isw/android/corp/bean/LocInfoBean;
    :try_start_0
    invoke-static {p0}, Lcom/isw/android/corp/message/MiniPhoneLocation;->getLocInfo(Ljava/lang/String;)Lcom/isw/android/corp/bean/LocInfoBean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 590
    :goto_0
    return-object v1

    .line 587
    :catch_0
    move-exception v0

    .line 588
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static getRotateAnim()Landroid/view/animation/Animation;
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/high16 v4, 0x3f00

    .line 771
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x43b4

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 773
    .local v0, rotate:Landroid/view/animation/Animation;
    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 774
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 775
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 776
    return-object v0
.end method

.method private static getScaleAnim()Landroid/view/animation/Animation;
    .locals 11

    .prologue
    .line 738
    new-instance v10, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x1

    invoke-direct {v10, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 739
    .local v10, scale:Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v1, 0x3fc0

    const/high16 v2, 0x3f00

    const/high16 v3, 0x3fc0

    const/high16 v4, 0x3f00

    .line 740
    const/4 v5, 0x1

    const/high16 v6, 0x3f00

    const/4 v7, 0x1

    const/high16 v8, 0x3f00

    .line 739
    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 741
    .local v0, sca1:Landroid/view/animation/ScaleAnimation;
    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 742
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/view/animation/ScaleAnimation;->setRepeatCount(I)V

    .line 743
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    const/high16 v2, 0x3f00

    const/high16 v3, 0x3fc0

    const/high16 v4, 0x3f00

    const/high16 v5, 0x3fc0

    .line 744
    const/4 v6, 0x1

    const/high16 v7, 0x3f00

    const/4 v8, 0x1

    const/high16 v9, 0x3f00

    .line 743
    invoke-direct/range {v1 .. v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 745
    .local v1, sca2:Landroid/view/animation/ScaleAnimation;
    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 746
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/view/animation/ScaleAnimation;->setRepeatCount(I)V

    .line 747
    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 748
    invoke-virtual {v10, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 749
    return-object v10
.end method

.method private static getShakeAnim()Landroid/view/animation/Animation;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 780
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v1, 0x4040

    invoke-direct {v0, v2, v1, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 781
    .local v0, shake:Landroid/view/animation/Animation;
    new-instance v1, Landroid/view/animation/CycleInterpolator;

    const/high16 v2, 0x4120

    invoke-direct {v1, v2}, Landroid/view/animation/CycleInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 782
    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 783
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 784
    return-object v0
.end method

.method public static isNetworkAvailable(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    .line 455
    .line 456
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 455
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 457
    .local v0, cm:Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    .line 462
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v2

    .line 463
    .local v2, info:[Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    .line 464
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v2

    if-lt v1, v3, :cond_1

    .line 471
    .end local v1           #i:I
    .end local v2           #info:[Landroid/net/NetworkInfo;
    :cond_0
    const/4 v3, 0x0

    :goto_1
    return v3

    .line 465
    .restart local v1       #i:I
    .restart local v2       #info:[Landroid/net/NetworkInfo;
    :cond_1
    aget-object v3, v2, v1

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_2

    .line 466
    const/4 v3, 0x1

    goto :goto_1

    .line 464
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static packageIsExist(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .parameter "context"
    .parameter "packageName"

    .prologue
    const/4 v1, 0x0

    .line 476
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 481
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 477
    :catch_0
    move-exception v0

    .line 478
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "DotInterface"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " is not exist!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setCDUP(Z)V
    .locals 2
    .parameter "bCDUP"

    .prologue
    .line 594
    const-string v0, "cdup"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isw/android/corp/util/LocalConfig;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    return-void
.end method

.method public static setCompanyPhoto(Landroid/widget/ImageView;Ljava/lang/String;Lcom/isw/android/corp/bean/DotInfoBean;)V
    .locals 5
    .parameter "quickContactView"
    .parameter "name"
    .parameter "dotInfo"

    .prologue
    .line 710
    const-string v2, "zdws"

    const-string v3, "setCompanyPhoto."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    if-eqz p2, :cond_0

    .line 712
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p2, Lcom/isw/android/corp/bean/DotInfoBean;->companyis:Ljava/io/InputStream;

    if-eqz v2, :cond_0

    .line 714
    :try_start_0
    iget-object v2, p2, Lcom/isw/android/corp/bean/DotInfoBean;->companyis:Ljava/io/InputStream;

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 715
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 719
    iget-object v2, p2, Lcom/isw/android/corp/bean/DotInfoBean;->companyis:Ljava/io/InputStream;

    if-eqz v2, :cond_0

    .line 721
    :try_start_1
    iget-object v2, p2, Lcom/isw/android/corp/bean/DotInfoBean;->companyis:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 722
    const/4 v2, 0x0

    iput-object v2, p2, Lcom/isw/android/corp/bean/DotInfoBean;->companyis:Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 730
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    return-void

    .line 716
    :catch_0
    move-exception v1

    .line 717
    .local v1, e:Ljava/lang/Exception;
    :try_start_2
    const-string v2, "zdws"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 719
    iget-object v2, p2, Lcom/isw/android/corp/bean/DotInfoBean;->companyis:Ljava/io/InputStream;

    if-eqz v2, :cond_0

    .line 721
    :try_start_3
    iget-object v2, p2, Lcom/isw/android/corp/bean/DotInfoBean;->companyis:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 722
    const/4 v2, 0x0

    iput-object v2, p2, Lcom/isw/android/corp/bean/DotInfoBean;->companyis:Ljava/io/InputStream;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 723
    :catch_1
    move-exception v1

    .line 724
    .local v1, e:Ljava/io/IOException;
    const-string v2, "zdws"

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 718
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v2

    .line 719
    iget-object v3, p2, Lcom/isw/android/corp/bean/DotInfoBean;->companyis:Ljava/io/InputStream;

    if-eqz v3, :cond_1

    .line 721
    :try_start_4
    iget-object v3, p2, Lcom/isw/android/corp/bean/DotInfoBean;->companyis:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 722
    const/4 v3, 0x0

    iput-object v3, p2, Lcom/isw/android/corp/bean/DotInfoBean;->companyis:Ljava/io/InputStream;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 727
    :cond_1
    :goto_1
    throw v2

    .line 723
    :catch_2
    move-exception v1

    .line 724
    .restart local v1       #e:Ljava/io/IOException;
    const-string v3, "zdws"

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 723
    .end local v1           #e:Ljava/io/IOException;
    .restart local v0       #drawable:Landroid/graphics/drawable/Drawable;
    :catch_3
    move-exception v1

    .line 724
    .restart local v1       #e:Ljava/io/IOException;
    const-string v2, "zdws"

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setCompanyText(Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Lcom/isw/android/corp/bean/DotInfoBean;)V
    .locals 3
    .parameter "nameView"
    .parameter "numberView"
    .parameter "name"
    .parameter "number"
    .parameter "dotInfo"

    .prologue
    .line 699
    const-string v0, "zdws"

    const-string v1, "setCompanyText."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    if-eqz p4, :cond_0

    .line 701
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p4, Lcom/isw/android/corp/bean/DotInfoBean;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 702
    const-string v0, "zdws"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "name is empty and dotInfoBean.name is:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p4, Lcom/isw/android/corp/bean/DotInfoBean;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    iget-object v0, p4, Lcom/isw/android/corp/bean/DotInfoBean;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 704
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 707
    :cond_0
    return-void
.end method

.method public static setDotAnim(Z)V
    .locals 3
    .parameter "dotAnim"

    .prologue
    .line 733
    const-string v0, "zdws"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mDotAnim: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/isw/android/corp/util/DotInterface;->mDotAnim:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    sput-boolean p0, Lcom/isw/android/corp/util/DotInterface;->mDotAnim:Z

    .line 735
    return-void
.end method

.method public static setDotBt(Landroid/content/Context;ILandroid/view/View;Landroid/widget/ImageView;Ljava/lang/String;Lcom/isw/android/corp/bean/DotInfoBean;I)V
    .locals 12
    .parameter "ctx"
    .parameter "position"
    .parameter "dotDivider"
    .parameter "dotButton"
    .parameter "dotNumber"
    .parameter "dotInfo"
    .parameter "dotCallType"

    .prologue
    .line 637
    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 638
    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 639
    const/16 v1, 0x8

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 640
    if-eqz p2, :cond_0

    .line 641
    const/16 v1, 0x8

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 644
    :cond_0
    if-eqz p5, :cond_4

    move-object/from16 v0, p5

    iget-object v1, v0, Lcom/isw/android/corp/bean/DotInfoBean;->dotis:Ljava/io/InputStream;

    if-eqz v1, :cond_4

    .line 646
    :try_start_0
    move-object/from16 v0, p5

    iget-object v1, v0, Lcom/isw/android/corp/bean/DotInfoBean;->dotis:Ljava/io/InputStream;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 647
    .local v9, dotIcon:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p3, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 648
    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 649
    if-eqz p2, :cond_1

    .line 650
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 653
    :cond_1
    const-string v1, "iswdotstate"

    .line 654
    const/4 v2, 0x2

    .line 653
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 656
    .local v7, dotState:Landroid/content/SharedPreferences;
    move-object/from16 v0, p5

    iget-object v10, v0, Lcom/isw/android/corp/bean/DotInfoBean;->dotModel:Ljava/lang/String;

    .line 657
    .local v10, dotModel:Ljava/lang/String;
    const-string v1, "DotInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "dotModel:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    const/4 v1, 0x1

    move-object/from16 v0, p4

    invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 659
    const/4 v8, 0x0

    .line 660
    .local v8, animation:Landroid/view/animation/Animation;
    const-string v1, "1"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 661
    invoke-static {}, Lcom/isw/android/corp/util/DotInterface;->getScaleAnim()Landroid/view/animation/Animation;

    move-result-object v8

    .line 669
    :cond_2
    :goto_0
    invoke-virtual {p3, v8}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 670
    const/4 v1, 0x0

    sput-boolean v1, Lcom/isw/android/corp/util/DotInterface;->mDotAnim:Z

    .line 673
    .end local v8           #animation:Landroid/view/animation/Animation;
    :cond_3
    new-instance v1, Lcom/isw/android/corp/util/DotInterface$1;

    move/from16 v2, p6

    move-object v3, p0

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object v6, p3

    invoke-direct/range {v1 .. v7}, Lcom/isw/android/corp/util/DotInterface$1;-><init>(ILandroid/content/Context;Ljava/lang/String;Lcom/isw/android/corp/bean/DotInfoBean;Landroid/widget/ImageView;Landroid/content/SharedPreferences;)V

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 685
    move-object/from16 v0, p5

    iget-object v1, v0, Lcom/isw/android/corp/bean/DotInfoBean;->dotis:Ljava/io/InputStream;

    if-eqz v1, :cond_4

    .line 687
    :try_start_1
    move-object/from16 v0, p5

    iget-object v1, v0, Lcom/isw/android/corp/bean/DotInfoBean;->dotis:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 688
    const/4 v1, 0x0

    move-object/from16 v0, p5

    iput-object v1, v0, Lcom/isw/android/corp/bean/DotInfoBean;->dotis:Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 695
    .end local v7           #dotState:Landroid/content/SharedPreferences;
    .end local v9           #dotIcon:Landroid/graphics/drawable/Drawable;
    .end local v10           #dotModel:Ljava/lang/String;
    :cond_4
    :goto_1
    return-void

    .line 662
    .restart local v7       #dotState:Landroid/content/SharedPreferences;
    .restart local v8       #animation:Landroid/view/animation/Animation;
    .restart local v9       #dotIcon:Landroid/graphics/drawable/Drawable;
    .restart local v10       #dotModel:Ljava/lang/String;
    :cond_5
    :try_start_2
    const-string v1, "2"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 663
    invoke-static {}, Lcom/isw/android/corp/util/DotInterface;->getRotateAnim()Landroid/view/animation/Animation;

    move-result-object v8

    .line 664
    goto :goto_0

    :cond_6
    const-string v1, "3"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 665
    invoke-static {}, Lcom/isw/android/corp/util/DotInterface;->getAlphaAnim()Landroid/view/animation/Animation;

    move-result-object v8

    .line 666
    goto :goto_0

    :cond_7
    const-string v1, "4"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 667
    invoke-static {}, Lcom/isw/android/corp/util/DotInterface;->getShakeAnim()Landroid/view/animation/Animation;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v8

    goto :goto_0

    .line 682
    .end local v7           #dotState:Landroid/content/SharedPreferences;
    .end local v8           #animation:Landroid/view/animation/Animation;
    .end local v9           #dotIcon:Landroid/graphics/drawable/Drawable;
    .end local v10           #dotModel:Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 683
    .local v11, e:Ljava/lang/Exception;
    :try_start_3
    const-string v1, "zdws"

    invoke-virtual {v11}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 685
    move-object/from16 v0, p5

    iget-object v1, v0, Lcom/isw/android/corp/bean/DotInfoBean;->dotis:Ljava/io/InputStream;

    if-eqz v1, :cond_4

    .line 687
    :try_start_4
    move-object/from16 v0, p5

    iget-object v1, v0, Lcom/isw/android/corp/bean/DotInfoBean;->dotis:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 688
    const/4 v1, 0x0

    move-object/from16 v0, p5

    iput-object v1, v0, Lcom/isw/android/corp/bean/DotInfoBean;->dotis:Ljava/io/InputStream;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 689
    :catch_1
    move-exception v11

    .line 690
    .local v11, e:Ljava/io/IOException;
    const-string v1, "zdws"

    invoke-virtual {v11}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 684
    .end local v11           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v1

    .line 685
    move-object/from16 v0, p5

    iget-object v2, v0, Lcom/isw/android/corp/bean/DotInfoBean;->dotis:Ljava/io/InputStream;

    if-eqz v2, :cond_8

    .line 687
    :try_start_5
    move-object/from16 v0, p5

    iget-object v2, v0, Lcom/isw/android/corp/bean/DotInfoBean;->dotis:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 688
    const/4 v2, 0x0

    move-object/from16 v0, p5

    iput-object v2, v0, Lcom/isw/android/corp/bean/DotInfoBean;->dotis:Ljava/io/InputStream;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 693
    :cond_8
    :goto_2
    throw v1

    .line 689
    :catch_2
    move-exception v11

    .line 690
    .restart local v11       #e:Ljava/io/IOException;
    const-string v2, "zdws"

    invoke-virtual {v11}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 689
    .end local v11           #e:Ljava/io/IOException;
    .restart local v7       #dotState:Landroid/content/SharedPreferences;
    .restart local v9       #dotIcon:Landroid/graphics/drawable/Drawable;
    .restart local v10       #dotModel:Ljava/lang/String;
    :catch_3
    move-exception v11

    .line 690
    .restart local v11       #e:Ljava/io/IOException;
    const-string v1, "zdws"

    invoke-virtual {v11}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static startLBSWebActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "city"
    .parameter "keyword"

    .prologue
    .line 550
    :try_start_0
    invoke-static {p0}, Lcom/isw/android/corp/util/DotInterface;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 551
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/isw/third/app/LBSWebActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 552
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "city"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 553
    const-string v2, "keyword"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 554
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 562
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 556
    :cond_0
    const-string v2, "\u83b7\u53d6\u5730\u7406\u4f4d\u7f6e\u5931\u8d25\uff01"

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 558
    :catch_0
    move-exception v0

    .line 560
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getCompanyIconInputStream()Ljava/io/InputStream;
    .locals 9

    .prologue
    .line 237
    :try_start_0
    sget-object v5, Lcom/isw/android/corp/util/DotInterface;->companyItemBean:Lcom/isw/android/corp/bean/CompanyItemBean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v5, :cond_1

    .line 238
    const/4 v0, 0x0

    .line 240
    .local v0, bytes:[B
    :try_start_1
    sget-object v5, Lcom/isw/android/corp/util/DotInterface;->companyItemBean:Lcom/isw/android/corp/bean/CompanyItemBean;

    iget-object v5, v5, Lcom/isw/android/corp/bean/CompanyItemBean;->iconid:Ljava/lang/String;

    invoke-static {v5}, Lcom/isw/android/corp/util/WinksTools;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 241
    sget-object v5, Lcom/isw/android/corp/util/DotInterface;->companyItemBean:Lcom/isw/android/corp/bean/CompanyItemBean;

    iget-boolean v5, v5, Lcom/isw/android/corp/bean/CompanyItemBean;->bShowCom:Z

    if-eqz v5, :cond_0

    .line 242
    sget-object v5, Lcom/isw/android/corp/util/DotInterface;->companyItemBean:Lcom/isw/android/corp/bean/CompanyItemBean;

    iget-object v4, v5, Lcom/isw/android/corp/bean/CompanyItemBean;->iconid:Ljava/lang/String;

    .line 243
    .local v4, iconFile:Ljava/lang/String;
    const-string v5, "DotInterface"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "iconFile:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    sput-object v5, Lcom/isw/android/corp/util/DotInterface;->ccIconStream:Ljava/io/FileInputStream;

    .line 245
    sget-object v5, Lcom/isw/android/corp/util/DotInterface;->ccIconStream:Ljava/io/FileInputStream;

    invoke-static {v5}, Lcom/isw/android/corp/util/WinksTools;->readInputStream(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 246
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    const/4 v5, 0x2

    if-lt v3, v5, :cond_2

    .line 250
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v5, p0, Lcom/isw/android/corp/util/DotInterface;->CompanyIconinputStream:Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 270
    .end local v3           #i:I
    .end local v4           #iconFile:Ljava/lang/String;
    :cond_0
    :try_start_2
    sget-object v5, Lcom/isw/android/corp/util/DotInterface;->ccIconStream:Ljava/io/FileInputStream;

    if-eqz v5, :cond_1

    .line 271
    sget-object v5, Lcom/isw/android/corp/util/DotInterface;->ccIconStream:Ljava/io/FileInputStream;

    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 282
    .end local v0           #bytes:[B
    :cond_1
    :goto_1
    iget-object v5, p0, Lcom/isw/android/corp/util/DotInterface;->CompanyIconinputStream:Ljava/io/InputStream;

    return-object v5

    .line 247
    .restart local v0       #bytes:[B
    .restart local v3       #i:I
    .restart local v4       #iconFile:Ljava/lang/String;
    :cond_2
    :try_start_3
    aget-byte v5, v0, v3

    xor-int/lit8 v5, v5, 0x12

    int-to-byte v5, v5

    aput-byte v5, v0, v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 246
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 252
    .end local v3           #i:I
    .end local v4           #iconFile:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 253
    .local v1, e:Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 270
    :try_start_5
    sget-object v5, Lcom/isw/android/corp/util/DotInterface;->ccIconStream:Ljava/io/FileInputStream;

    if-eqz v5, :cond_1

    .line 271
    sget-object v5, Lcom/isw/android/corp/util/DotInterface;->ccIconStream:Ljava/io/FileInputStream;

    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 273
    :catch_1
    move-exception v2

    .line 274
    .local v2, ex:Ljava/lang/Exception;
    :try_start_6
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 275
    const-string v5, "DotInterface"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "ex: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_1

    .line 279
    .end local v0           #bytes:[B
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #ex:Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 280
    .restart local v1       #e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 268
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #bytes:[B
    :catchall_0
    move-exception v5

    .line 270
    :try_start_7
    sget-object v6, Lcom/isw/android/corp/util/DotInterface;->ccIconStream:Ljava/io/FileInputStream;

    if-eqz v6, :cond_3

    .line 271
    sget-object v6, Lcom/isw/android/corp/util/DotInterface;->ccIconStream:Ljava/io/FileInputStream;

    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 277
    :cond_3
    :goto_2
    :try_start_8
    throw v5

    .line 273
    :catch_3
    move-exception v2

    .line 274
    .restart local v2       #ex:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 275
    const-string v6, "DotInterface"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "ex: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 273
    .end local v2           #ex:Ljava/lang/Exception;
    :catch_4
    move-exception v2

    .line 274
    .restart local v2       #ex:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 275
    const-string v5, "DotInterface"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "ex: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_1
.end method

.method public getCompanyName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 441
    :try_start_0
    sget-object v1, Lcom/isw/android/corp/util/DotInterface;->companyItemBean:Lcom/isw/android/corp/bean/CompanyItemBean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    .line 442
    const-string v1, ""

    .line 448
    :goto_0
    return-object v1

    .line 444
    :cond_0
    :try_start_1
    sget-object v1, Lcom/isw/android/corp/util/DotInterface;->companyItemBean:Lcom/isw/android/corp/bean/CompanyItemBean;

    iget-object v1, v1, Lcom/isw/android/corp/bean/CompanyItemBean;->name:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 445
    :catch_0
    move-exception v0

    .line 447
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 448
    const-string v1, ""

    goto :goto_0
.end method

.method public showDotImage(Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 4
    .parameter "view"
    .parameter "iswPhotoView"

    .prologue
    .line 608
    const-string v2, "zdws"

    const-string v3, "showDotImage..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    const/4 v0, 0x0

    .line 611
    .local v0, companyIs:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Lcom/isw/android/corp/util/DotInterface;->getCompanyIconInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 612
    if-eqz v0, :cond_1

    .line 613
    if-eqz p1, :cond_0

    .line 614
    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 616
    :cond_0
    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 617
    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 618
    const-string v2, "zdws"

    const-string v3, "showDotImage...really show!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 623
    :cond_1
    if-eqz v0, :cond_2

    .line 625
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 626
    const/4 v0, 0x0

    .line 632
    :cond_2
    :goto_0
    return-void

    .line 620
    :catch_0
    move-exception v1

    .line 621
    .local v1, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 623
    if-eqz v0, :cond_2

    .line 625
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 626
    const/4 v0, 0x0

    goto :goto_0

    .line 627
    :catch_1
    move-exception v1

    .line 628
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 622
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v2

    .line 623
    if-eqz v0, :cond_3

    .line 625
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 626
    const/4 v0, 0x0

    .line 631
    :cond_3
    :goto_1
    throw v2

    .line 627
    :catch_2
    move-exception v1

    .line 628
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 627
    .end local v1           #e:Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 628
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
