# Benchmarking Nginx Unit vs PHP FPM

This repository contains the necessary information and tools to benchmark the performance of Nginx Unit and PHP FPM, two popular technologies for serving PHP applications.

## Requirements

Before proceeding with the benchmark, ensure that you have the following requirements in place:

- [Nginx Unit](https://unit.nginx.org/) - Install and configure Nginx Unit on your server.
- [PHP FPM](https://www.php.net/manual/en/install.fpm.php) - Install and configure PHP FPM on your server.
- [Yandex.Tank](https://github.com/yandex/yandex-tank) - Install Yandex.Tank for load testing.
- [Overload](https://github.com/alexei-led/overload) - Install Overload for plotting benchmark results.
- [Telegraf](https://docs.influxdata.com/telegraf/) - Install Telegraf to collect resource usage statistics.

## Running containers

for nginx-php-fpm

```
cd nginx-php-fpm && docker-compose up 
```

for nginx-unit-php

```
cd nginx-unit-php && docker-compose up
```

## Getting Started

To benchmark Nginx Unit vs PHP FPM, follow these steps:

1. **Configuration**: Update the configuration files according to your server setup. Modify the Nginx Unit and PHP FPM configurations to reflect your application's settings.

2. **Load Testing**: Use Yandex.Tank to simulate concurrent requests and measure the performance of Nginx Unit and PHP FPM. Customize the load test scenarios and parameters in the `test.yaml` configuration file.

3. **Resource Monitoring**: Configure Telegraf to collect resource usage statistics during the load test. Adjust the Telegraf configuration file to monitor CPU, memory, disk, or other relevant metrics.

4. **Benchmark Execution**: Execute the load tests using Yandex.Tank and collect resource usage data with Telegraf. Save the benchmark results and resource statistics.

5. **Graph Generation**: Use Overload to generate graphs based on the benchmark results and resource usage data collected during the load tests. Customize the graph generation options to suit your visualization requirements.

6. **Analysis and Optimization**: Analyze the benchmark results and graphs to gain insights into the performance of Nginx Unit and PHP FPM. Identify any bottlenecks or areas for optimization. Make necessary adjustments to the server configurations, PHP settings, or code optimizations.

## Repository Structure

The repository structure is organized as follows:

- `config/`: Contains the configuration files for Nginx Unit and PHP FPM.
- `load-tests/`: Includes the Yandex.Tank configuration file (`test.yaml`) and any additional ammunition files for load testing.
- `reports/`: The directory where the benchmark results and resource usage statistics are saved.
- `graphs/`: The directory where Overload generates the graphs based on the benchmark results.

## License

This repository is licensed under the [MIT License](LICENSE).

## Acknowledgements

- [Nginx Unit](https://unit.nginx.org/)
- [PHP FPM](https://www.php.net/manual/en/install.fpm.php)
- [Yandex.Tank](https://github.com/yandex/yandex-tank)
- [Overload](https://github.com/alexei-led/overload)
- [Telegraf](https://docs.influxdata.com/telegraf/)

