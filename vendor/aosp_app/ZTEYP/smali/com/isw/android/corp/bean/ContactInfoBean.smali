.class public Lcom/isw/android/corp/bean/ContactInfoBean;
.super Ljava/lang/Object;
.source "ContactInfoBean.java"


# static fields
.field public static final CONTACTURL:Ljava/lang/String; = "CONTACTURL"

.field public static final CONTENT_URI:Landroid/net/Uri;


# instance fields
.field public contactUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const-string v0, "content://com.isw.android.corp.util.DotInfoProvider/contactUrl"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 6
    sput-object v0, Lcom/isw/android/corp/bean/ContactInfoBean;->CONTENT_URI:Landroid/net/Uri;

    .line 10
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/isw/android/corp/bean/ContactInfoBean;->contactUrl:Ljava/lang/String;

    .line 16
    return-void
.end method
