.class Lcom/applovin/impl/sdk/at;
.super Lcom/applovin/sdk/AppLovinSdkSettings;


# instance fields
.field private final a:Ljava/util/Map;

.field private b:Lcom/applovin/impl/sdk/k;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/applovin/sdk/AppLovinSdkSettings;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/sdk/at;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method a()Lcom/applovin/impl/sdk/k;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/at;->b:Lcom/applovin/impl/sdk/k;

    return-object v0
.end method

.method b()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/at;->a:Ljava/util/Map;

    return-object v0
.end method
