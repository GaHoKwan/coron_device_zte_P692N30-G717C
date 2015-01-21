.class Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;
.super Ljava/lang/Object;
.source "OmacpParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/omacp/parser/OmacpParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OmacpParserData"
.end annotation


# instance fields
.field public mAppAddr:Lcom/mediatek/omacp/parser/ApplicationClass$AppAddr;

.field public mAppAuth:Lcom/mediatek/omacp/parser/ApplicationClass$AppAuth;

.field public mApplication:Lcom/mediatek/omacp/parser/ApplicationClass;

.field public mListType:Ljava/lang/String;

.field public mName:Ljava/lang/String;

.field public mNapAuthInfo:Lcom/mediatek/omacp/parser/NapdefClass$NapAuthInfo;

.field public mNapdefClass:Lcom/mediatek/omacp/parser/NapdefClass;

.field public mParmName:Ljava/lang/String;

.field public mParmValue:Ljava/lang/String;

.field public mPort:Lcom/mediatek/omacp/parser/ApplicationClass$Port;

.field public mProxyClass:Lcom/mediatek/omacp/parser/ProxyClass;

.field public mPxAuthInfo:Lcom/mediatek/omacp/parser/ProxyClass$PxAuthInfo;

.field public mPxPhysical:Lcom/mediatek/omacp/parser/ProxyClass$PxPhysical;

.field public mResource:Lcom/mediatek/omacp/parser/ApplicationClass$Resource;

.field public mType:Ljava/lang/String;

.field public mUri:Ljava/lang/String;

.field public mValidity:Lcom/mediatek/omacp/parser/NapdefClass$Validity;

.field final synthetic this$0:Lcom/mediatek/omacp/parser/OmacpParser;


# direct methods
.method private constructor <init>(Lcom/mediatek/omacp/parser/OmacpParser;)V
    .locals 0
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;->this$0:Lcom/mediatek/omacp/parser/OmacpParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/omacp/parser/OmacpParser;Lcom/mediatek/omacp/parser/OmacpParser$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/mediatek/omacp/parser/OmacpParser$OmacpParserData;-><init>(Lcom/mediatek/omacp/parser/OmacpParser;)V

    return-void
.end method
