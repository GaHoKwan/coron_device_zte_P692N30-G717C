.class Lcom/autonavi/xmgd/plugin/PluginXMLParser$PluginHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;


# instance fields
.field private finish:Z

.field private plugin:Lcom/autonavi/xmgd/plugin/PluginWrapper;

.field private stringBuffer:Ljava/lang/StringBuffer;

.field final synthetic this$0:Lcom/autonavi/xmgd/plugin/PluginXMLParser;


# direct methods
.method private constructor <init>(Lcom/autonavi/xmgd/plugin/PluginXMLParser;)V
    .locals 1

    iput-object p1, p0, Lcom/autonavi/xmgd/plugin/PluginXMLParser$PluginHandler;->this$0:Lcom/autonavi/xmgd/plugin/PluginXMLParser;

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xmgd/plugin/PluginXMLParser$PluginHandler;->stringBuffer:Ljava/lang/StringBuffer;

    new-instance v0, Lcom/autonavi/xmgd/plugin/PluginWrapper;

    invoke-direct {v0}, Lcom/autonavi/xmgd/plugin/PluginWrapper;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xmgd/plugin/PluginXMLParser$PluginHandler;->plugin:Lcom/autonavi/xmgd/plugin/PluginWrapper;

    return-void
.end method

.method synthetic constructor <init>(Lcom/autonavi/xmgd/plugin/PluginXMLParser;Lcom/autonavi/xmgd/plugin/PluginXMLParser$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/autonavi/xmgd/plugin/PluginXMLParser$PluginHandler;-><init>(Lcom/autonavi/xmgd/plugin/PluginXMLParser;)V

    return-void
.end method

.method static synthetic access$100(Lcom/autonavi/xmgd/plugin/PluginXMLParser$PluginHandler;)Lcom/autonavi/xmgd/plugin/PluginWrapper;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/plugin/PluginXMLParser$PluginHandler;->plugin:Lcom/autonavi/xmgd/plugin/PluginWrapper;

    return-object v0
.end method


# virtual methods
.method public characters([CII)V
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/xmgd/plugin/PluginXMLParser$PluginHandler;->finish:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/plugin/PluginXMLParser$PluginHandler;->stringBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/DefaultHandler;->characters([CII)V

    goto :goto_0
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-boolean v0, p0, Lcom/autonavi/xmgd/plugin/PluginXMLParser$PluginHandler;->finish:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/plugin/PluginXMLParser$PluginHandler;->this$0:Lcom/autonavi/xmgd/plugin/PluginXMLParser;

    #getter for: Lcom/autonavi/xmgd/plugin/PluginXMLParser;->mEle:Ljava/lang/String;
    invoke-static {v0}, Lcom/autonavi/xmgd/plugin/PluginXMLParser;->access$200(Lcom/autonavi/xmgd/plugin/PluginXMLParser;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/plugin/PluginXMLParser$PluginHandler;->this$0:Lcom/autonavi/xmgd/plugin/PluginXMLParser;

    #getter for: Lcom/autonavi/xmgd/plugin/PluginXMLParser;->mEle:Ljava/lang/String;
    invoke-static {v0}, Lcom/autonavi/xmgd/plugin/PluginXMLParser;->access$200(Lcom/autonavi/xmgd/plugin/PluginXMLParser;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/xmgd/plugin/PluginXMLParser$PluginHandler;->finish:Z

    iget-object v0, p0, Lcom/autonavi/xmgd/plugin/PluginXMLParser$PluginHandler;->this$0:Lcom/autonavi/xmgd/plugin/PluginXMLParser;

    iget-object v1, p0, Lcom/autonavi/xmgd/plugin/PluginXMLParser$PluginHandler;->stringBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/autonavi/xmgd/plugin/PluginXMLParser;->mValue:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/autonavi/xmgd/plugin/PluginXMLParser;->access$302(Lcom/autonavi/xmgd/plugin/PluginXMLParser;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v0, "plugin"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    :goto_1
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/DefaultHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v0, "version"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :try_start_0
    iget-object v0, p0, Lcom/autonavi/xmgd/plugin/PluginXMLParser$PluginHandler;->plugin:Lcom/autonavi/xmgd/plugin/PluginWrapper;

    iget-object v1, p0, Lcom/autonavi/xmgd/plugin/PluginXMLParser$PluginHandler;->stringBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mVersionCode:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/autonavi/xmgd/plugin/PluginXMLParser$PluginHandler;->plugin:Lcom/autonavi/xmgd/plugin/PluginWrapper;

    const/4 v1, 0x0

    iput v1, v0, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mVersionCode:I

    goto :goto_1

    :cond_4
    const-string v0, "vendor"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/autonavi/xmgd/plugin/PluginXMLParser$PluginHandler;->plugin:Lcom/autonavi/xmgd/plugin/PluginWrapper;

    iget-object v1, p0, Lcom/autonavi/xmgd/plugin/PluginXMLParser$PluginHandler;->stringBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mVendor:Ljava/lang/String;

    goto :goto_1

    :cond_5
    const-string v0, "url"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/autonavi/xmgd/plugin/PluginXMLParser$PluginHandler;->plugin:Lcom/autonavi/xmgd/plugin/PluginWrapper;

    iget-object v1, p0, Lcom/autonavi/xmgd/plugin/PluginXMLParser$PluginHandler;->stringBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mUrl:Ljava/lang/String;

    goto :goto_1

    :cond_6
    const-string v0, "form"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/autonavi/xmgd/plugin/PluginXMLParser$PluginHandler;->stringBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v0, p0, Lcom/autonavi/xmgd/plugin/PluginXMLParser$PluginHandler;->plugin:Lcom/autonavi/xmgd/plugin/PluginWrapper;

    sget-object v1, Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginForm;->APK_SDCARD:Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginForm;

    iput-object v1, v0, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mPluginForm:Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginForm;

    goto :goto_1

    :cond_7
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v0, p0, Lcom/autonavi/xmgd/plugin/PluginXMLParser$PluginHandler;->plugin:Lcom/autonavi/xmgd/plugin/PluginWrapper;

    sget-object v1, Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginForm;->APK_INSTALLED:Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginForm;

    iput-object v1, v0, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mPluginForm:Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginForm;

    goto :goto_1

    :cond_8
    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v0, p0, Lcom/autonavi/xmgd/plugin/PluginXMLParser$PluginHandler;->plugin:Lcom/autonavi/xmgd/plugin/PluginWrapper;

    sget-object v1, Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginForm;->JAR_HOST:Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginForm;

    iput-object v1, v0, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mPluginForm:Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginForm;

    goto/16 :goto_1

    :cond_9
    const-string v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/autonavi/xmgd/plugin/PluginXMLParser$PluginHandler;->plugin:Lcom/autonavi/xmgd/plugin/PluginWrapper;

    sget-object v1, Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginForm;->APK_HOST_ASSERTS:Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginForm;

    iput-object v1, v0, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mPluginForm:Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginForm;

    goto/16 :goto_1

    :cond_a
    iget-object v0, p0, Lcom/autonavi/xmgd/plugin/PluginXMLParser$PluginHandler;->plugin:Lcom/autonavi/xmgd/plugin/PluginWrapper;

    sget-object v1, Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginForm;->UNKNOWN:Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginForm;

    iput-object v1, v0, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mPluginForm:Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginForm;

    goto/16 :goto_1

    :cond_b
    const-string v0, "file"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/autonavi/xmgd/plugin/PluginXMLParser$PluginHandler;->plugin:Lcom/autonavi/xmgd/plugin/PluginWrapper;

    iget-object v1, p0, Lcom/autonavi/xmgd/plugin/PluginXMLParser$PluginHandler;->stringBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mName:Ljava/lang/String;

    goto/16 :goto_1

    :cond_c
    const-string v0, "package"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/autonavi/xmgd/plugin/PluginXMLParser$PluginHandler;->plugin:Lcom/autonavi/xmgd/plugin/PluginWrapper;

    iget-object v1, p0, Lcom/autonavi/xmgd/plugin/PluginXMLParser$PluginHandler;->stringBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mAppPackageName:Ljava/lang/String;

    goto/16 :goto_1

    :cond_d
    const-string v0, "entry"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/autonavi/xmgd/plugin/PluginXMLParser$PluginHandler;->plugin:Lcom/autonavi/xmgd/plugin/PluginWrapper;

    iget-object v1, p0, Lcom/autonavi/xmgd/plugin/PluginXMLParser$PluginHandler;->stringBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mEntry:Ljava/lang/String;

    goto/16 :goto_1

    :cond_e
    const-string v0, "title"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/autonavi/xmgd/plugin/PluginXMLParser$PluginHandler;->plugin:Lcom/autonavi/xmgd/plugin/PluginWrapper;

    iget-object v1, p0, Lcom/autonavi/xmgd/plugin/PluginXMLParser$PluginHandler;->stringBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mTitle:Ljava/lang/String;

    goto/16 :goto_1

    :cond_f
    const-string v0, "description"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/autonavi/xmgd/plugin/PluginXMLParser$PluginHandler;->plugin:Lcom/autonavi/xmgd/plugin/PluginWrapper;

    iget-object v1, p0, Lcom/autonavi/xmgd/plugin/PluginXMLParser$PluginHandler;->stringBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mDescription:Ljava/lang/String;

    goto/16 :goto_1

    :cond_10
    const-string v0, "key"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/autonavi/xmgd/plugin/PluginXMLParser$PluginHandler;->plugin:Lcom/autonavi/xmgd/plugin/PluginWrapper;

    iget-object v1, p0, Lcom/autonavi/xmgd/plugin/PluginXMLParser$PluginHandler;->stringBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mKey:Ljava/lang/String;

    new-instance v0, Lcom/autonavi/xmgd/plugin/PluginKey;

    iget-object v1, p0, Lcom/autonavi/xmgd/plugin/PluginXMLParser$PluginHandler;->plugin:Lcom/autonavi/xmgd/plugin/PluginWrapper;

    iget-object v1, v1, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mKey:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/autonavi/xmgd/plugin/PluginKey;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/autonavi/xmgd/plugin/PluginXMLParser$PluginHandler;->plugin:Lcom/autonavi/xmgd/plugin/PluginWrapper;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/plugin/PluginKey;->getGrade()I

    move-result v2

    iput v2, v1, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mGrade:I

    iget-object v1, p0, Lcom/autonavi/xmgd/plugin/PluginXMLParser$PluginHandler;->plugin:Lcom/autonavi/xmgd/plugin/PluginWrapper;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/plugin/PluginKey;->getTop()I

    move-result v0

    iput v0, v1, Lcom/autonavi/xmgd/plugin/PluginWrapper;->mTop:I

    goto/16 :goto_1

    :cond_11
    const-string v0, "feature"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/xmgd/plugin/PluginXMLParser$PluginHandler;->plugin:Lcom/autonavi/xmgd/plugin/PluginWrapper;

    iget-object v1, p0, Lcom/autonavi/xmgd/plugin/PluginXMLParser$PluginHandler;->stringBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/plugin/PluginWrapper;->addInterface(Ljava/lang/String;)Z

    goto/16 :goto_1
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 3

    iget-boolean v0, p0, Lcom/autonavi/xmgd/plugin/PluginXMLParser$PluginHandler;->finish:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/plugin/PluginXMLParser$PluginHandler;->stringBuffer:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/autonavi/xmgd/plugin/PluginXMLParser$PluginHandler;->stringBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    invoke-super {p0, p1, p2, p3, p4}, Lorg/xml/sax/helpers/DefaultHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    goto :goto_0
.end method
