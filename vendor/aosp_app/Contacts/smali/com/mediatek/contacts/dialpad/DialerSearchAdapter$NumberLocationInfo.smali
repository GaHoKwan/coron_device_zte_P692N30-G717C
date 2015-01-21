.class Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$NumberLocationInfo;
.super Ljava/lang/Object;
.source "DialerSearchAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NumberLocationInfo"
.end annotation


# instance fields
.field private areaCode:Ljava/lang/String;

.field private cardType:Ljava/lang/String;

.field private city:Ljava/lang/String;

.field private detail:Ljava/lang/String;

.field private number:Ljava/lang/String;

.field private prefix:Ljava/lang/String;

.field final synthetic this$0:Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;


# direct methods
.method public constructor <init>(Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "number"
    .parameter "city"
    .parameter "detail"
    .parameter "prefix"
    .parameter "areaCode"
    .parameter "cardType"

    .prologue
    .line 990
    iput-object p1, p0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$NumberLocationInfo;->this$0:Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 991
    iput-object p2, p0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$NumberLocationInfo;->number:Ljava/lang/String;

    .line 992
    iput-object p3, p0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$NumberLocationInfo;->city:Ljava/lang/String;

    .line 993
    iput-object p4, p0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$NumberLocationInfo;->detail:Ljava/lang/String;

    .line 994
    iput-object p5, p0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$NumberLocationInfo;->prefix:Ljava/lang/String;

    .line 995
    iput-object p6, p0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$NumberLocationInfo;->areaCode:Ljava/lang/String;

    .line 996
    iput-object p7, p0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$NumberLocationInfo;->cardType:Ljava/lang/String;

    .line 997
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$NumberLocationInfo;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 981
    iget-object v0, p0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$NumberLocationInfo;->city:Ljava/lang/String;

    return-object v0
.end method
